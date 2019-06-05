#!/bin/bash
#SBATCH --time=2-10:30:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=8GB
#SBATCH --job-name=ViZDoom_DQN
#SBATCH --mail-type=ALL
#SBATCH --mail-user=yifei.chen@rug.nl



cd /data/p285442/DeepLearning/Arnold/


python arnold.py --scenario deathmatch --wad deathmatch_rockets --n_bots 8 \
--action_combinations "move_fb;move_lr;turn_lr;attack" --frame_skip 4 \
--game_features "enemy" --network_type dqn_rnn --recurrence lstm --n_rec_updates 5 --exp_name pere_train1
