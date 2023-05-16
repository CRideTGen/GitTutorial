#!/usr/bin/env bash

set -uoe pipefail

# Create 1000 files in a directory named lots_of_files

mkdir -p lots_of_files

script_name=$(basename "$0")
current_time=$(date "+%Y.%m.%d-%H.%M.%S")
number_of_files=100
echo "starting making files"
for i in $(seq 1 "${number_of_files}"); do
  echo "This is file ${i}" >lots_of_files/my_output_${i}.txt
done

echo "finished making files"
git add "$0"
git add lots_of_files/*
echo "added files to git"

if git diff-index --quiet HEAD --; then
  echo "No changes to commit"
  exit 0
else
  echo "committing files"
  git commit -m "Run: ${script_name} at ${current_time} with ${number_of_files} files"
fi
