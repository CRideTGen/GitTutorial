#!/bin/env bash

#SBATCH --job-name=make_lots_of_files
#SBATCH --time=00:01:00
#SBATCH --mem=1G
#SBATCH --cpus-per-task=1
#SBATCH --array=1-1000%100


srun echo "This is file ${SLURM_ARRAY_TASK_ID}" > lots_of_files/my_output_${SLURM_ARRAY_TASK_ID}.txt

