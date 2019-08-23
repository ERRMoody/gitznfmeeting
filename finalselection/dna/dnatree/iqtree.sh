#!/bin/sh
#SBATCH --job-name=zncdna
#SBATCH --partition=hmem
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=10
#SBATCH --time=14-00:00:0

module load apps/iqtree/omp-1.6.7

iqtree -s speciestopblast50idalitest.fa -m GTR+F+G -bb 1000 -wbtl -bnni -nt 10 --runs 10

