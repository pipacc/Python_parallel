#!/bin/bash
#SBATCH --job-name=parallel_segmentation
#SBATCH --time=10:00
#SBATCH --ntasks=10
#SBATCH --mem-per-cpu=1024MB
#SBATCH --partition=computes_thin

python3 segment_picture.py

