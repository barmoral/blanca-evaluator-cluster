#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --time=20:00:00
#SBATCH --partition=blanca-shirts
#SBATCH --qos=blanca-shirts
#SBATCH --account=blanca-shirts
#SBATCH --gres=gpu
#SBATCH --job-name=hmix
#SBATCH --output=slurm_codes/hmix.log

module purge
module avail
ml anaconda
conda activate evaluator-blanca

python hmix_calc.py
echo "It finished"
