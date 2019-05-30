#!/bin/bash
#SBATCH --time=2-10:30:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=8GB
#SBATCH --job-name=ViZDoom_DQN
#SBATCH --mail-type=ALL
#SBATCH --mail-user=yifei.chen@rug.nl



cd /data/p285442/DeepLearning/ViZDoom_dqn/

pip install --user vizdoom

python Deep_Q_learning_with_Doom_hg.py
