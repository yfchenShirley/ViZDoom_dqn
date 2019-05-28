#!/bin/bash
#SBATCH --time=2-10:30:00
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --mem=8GB
#SBATCH --job-name=ViZDoom_DQN
#SBATCH --mail-type=ALL
#SBATCH --mail-user=yifei.chen@rug.nl

module load Python/3.6.4-foss-2018a
module load cuDNN/7.1.4.18-CUDA-9.0.176


cd /data/p285442/DeepLearning/ViZDoom_dqn/


#pip install tensorflow-gpu --user
#pip install cudnn --user
#pip install cudatoolkit --user
#pip install cmake --user
#pip install vizdoom --user

python Deep_Q_learning_with_Doom_hg.py
