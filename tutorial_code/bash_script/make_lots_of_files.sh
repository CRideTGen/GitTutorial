#!/usr/bin/env bash

set -uoe pipefail

# Create 1000 files in a directory named lots_of_files


if [[ -d lots_of_files ]]; then
  rm -f lots_of_files/*
else
  mkdir -p lots_of_files

fi

if [[ -d slurm_logs ]]; then
  rm -f slurm_logs/*
else
  mkdir -p slurm_logs

fi

script_name=$(basename "$0")
current_time=$(date "+%Y.%m.%d-%H.%M.%S")
number_of_files=100

echo "starting making files"
jobid=$(sbatch --wait --job-name="Making_Files" --output=slurm_logs/slurm_%A_%a.out --array=1-"${number_of_files}"%100 ./slurm_array.sh | awk '{print $4}')

echo "finished making files"
git add "$0"
git add lots_of_files/*
git add slurm_logs/*
echo "added files to git"

if git diff-index --quiet HEAD --; then
  echo "No changes to commit"
  exit 0
else
  echo "committing files"
  git commit -m "Run: ${script_name} jobid=${jobid} at ${current_time} with ${number_of_files} files"
fi
