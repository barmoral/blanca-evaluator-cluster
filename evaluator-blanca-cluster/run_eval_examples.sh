#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --time=01:00:00
#SBATCH --partition=blanca-shirts
#SBATCH --qos=blanca-shirts
#SBATCH --account=blanca-shirts
#SBATCH --gres=gpu
#SBATCH --job-name=eval_examples
#SBATCH --output=slurm_codes/eval_examples.log

module purge
module avail
ml anaconda
conda activate evaluator-blanca

python eval_examples_pycode.py
echo "It finished"
