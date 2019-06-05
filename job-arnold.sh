#!/bin/bash
#SBATCH --time=2-00:30:00
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --mem=8GB
#SBATCH --job-name=Arnold
#SBATCH --mail-type=ALL
#SBATCH --mail-user=yifei.chen@rug.nl

module load Python/3.6.4-foss-2018a
module load TensorFlow/1.12.0-fosscuda-2018a-Python-3.6.4
module load cuDNN/7.1.4.18-CUDA-9.0.176
module load CMake/3.8.0-foss-2016a



cd /data/p285442/DeepLearning/Arnold/


python arnold.py --scenario deathmatch --wad deathmatch_rockets --n_bots 8 \
--action_combinations "move_fb;move_lr;turn_lr;attack" --frame_skip 4 \
--game_features "enemy" --network_type dqn_rnn --recurrence lstm --n_rec_updates 5 --gpu_id 0 --exp_name pere_train1
