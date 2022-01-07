#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=2G
#SBATCH --partition=sched_mit_sloan_batch
#SBATCH --time=0-00:10
#SBATCH -o /home/username/clusterrepo/myoutputfile.out
#SBATCH -e /home/username/clusterrepo/myerrorfile.err
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=eyzhang@mit.edu
#SBATCH --output=trial.log

module load julia/1.5.2

julia myscript.jl
