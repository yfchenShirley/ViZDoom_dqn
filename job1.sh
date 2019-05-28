#!/bin/bash
#SBATCH --time=2-10:30:00
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --mem=8GB
#SBATCH --job-name=ViZDoom_DQN
#SBATCH --mail-type=ALL
#SBATCH --mail-user=yifei.chen@rug.nl

module load Python/3.6.4-foss-2018a
module load TensorFlow/1.12.0-fosscuda-2018a-Python-3.6.4
module load cuDNN/7.1.4.18-CUDA-9.0.176
module load CMake/3.8.0-foss-2016a



cd /data/p285442/DeepLearning/ViZDoom_dqn/



#pip install vizdoom --user

python Deep_Q_learning_with_Doom_hg.py
