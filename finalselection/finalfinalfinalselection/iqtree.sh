#!/bin/sh
#SBATCH --job-name=zincml
#SBATCH --partition=hmem
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=28
#SBATCH --time=14-00:00:0

module load apps/iqtree/omp-1.6.7

iqtree -s neorepali3.fa -m LG+C60+F+G -bb 1000 -wbtl -bnni -nt AUTO --runs 10


