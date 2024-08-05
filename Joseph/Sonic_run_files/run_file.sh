#!/bin/bash -l
#SBATCH --job-name=openfoamrun
# speficity number of nodes 
#SBATCH -N 1

# specify number of tasks/cores per node required
#SBATCH --ntasks-per-node 40

# specify the walltime e.g 20 mins
#SBATCH -t 190:00:00

# set to email at start,end and failed jobs
#SBATCH --mail-type=ALL
#SBATCH --mail-user=joseph.anderson1@ucdconnect.ie

# run from current directory
cd $SLURM_SUBMIT_DIR

# Load Module
module load openfoam/2306
source /opt/software/openfoam/2306/etc/bashrc

# set-up from prepare file
cd /home/people/20493252/3DJuan_equil50_Ut6155_RUN/case

# run on parallel with 40 cores
decomposePar
mpirun -np 40 interFoam -parallel

hostname
