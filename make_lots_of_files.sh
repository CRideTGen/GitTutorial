#!/usr/bin/env bash

set -uoe pipefail

# Create 1000 files in a directory named lots_of_files

mkdir -p lots_of_files

script_name=$(basename "$0")
current_time=$(date "+%Y.%m.%d-%H.%M.%S")
number_of_files=1000
for i in seq "${number_of_files}"; do
    echo "This is file ${i}" > lots_of_files/my_output_${i}.txt
done

git add lots_of_files
git commit -m "Run: ${script_name} at ${current_time} with ${number_of_files} files"


