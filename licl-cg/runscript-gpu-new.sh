#!/bin/bash
#PBS -l ncpus=12
#PBS -l ngpus=1
#PBS -l mem=96GB
#PBS -l walltime=48:00:00
#PBS -l storage=scratch/tn51+gdata/tn51
#PBS -l wd
#PBS -q gpuvolta
#PBS -P tn51
#PBS -N LiCl-run1
#PBS -l jobfs=10GB


module load python3/3.9.2

source /g/data/tn51/shared/nequip-env/bin/activate

/g/data/tn51/shared/nequip-env/lammps/build/lmp -i in.lammps > out.lammps


