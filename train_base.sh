WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/mipnerf360/bicycle -m output/SteepGS/mipnerf360/bicycle --eval --no_gui --densify_strategy steepest
WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/mipnerf360/flowers -m output/SteepGS/mipnerf360/flowers --eval --no_gui --densify_strategy steepest
WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/mipnerf360/garden -m output/SteepGS/mipnerf360/garden --eval --no_gui --densify_strategy steepest
WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/mipnerf360/stump -m output/SteepGS/mipnerf360/stump --eval --no_gui --densify_strategy steepest
WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/mipnerf360/treehill -m output/SteepGS/mipnerf360/treehill --eval --no_gui --densify_strategy steepest
WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/mipnerf360/room -m output/SteepGS/mipnerf360/room --eval --no_gui --densify_strategy steepest
WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/mipnerf360/counter -m output/SteepGS/mipnerf360/counter --eval --no_gui --densify_strategy steepest
WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/mipnerf360/kitchen -m output/SteepGS/mipnerf360/kitchen --eval --no_gui --densify_strategy steepest
WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/mipnerf360/bonsai -m output/SteepGS/mipnerf360/bonsai --eval --no_gui --densify_strategy steepest
WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/tandt/truck -m output/SteepGS/tandt/truck --eval --no_gui --densify_strategy steepest
WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/tandt/train -m output/SteepGS/tandt/train --eval --no_gui --densify_strategy steepest
WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/db/playroom -m output/SteepGS/db/playroom --eval --no_gui --densify_strategy steepest
WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/db/drjohnson -m output/SteepGS/db/drjohnson --eval --no_gui --densify_strategy steepest

CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/mipnerf360/bicycle --skip_train
CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/mipnerf360/flowers --skip_train
CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/mipnerf360/garden --skip_train
CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/mipnerf360/stump --skip_train
CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/mipnerf360/treehill --skip_train
CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/mipnerf360/room --skip_train
CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/mipnerf360/counter --skip_train
CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/mipnerf360/kitchen --skip_train
CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/mipnerf360/bonsai --skip_train
CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/tandt/truck --skip_train
CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/tandt/train --skip_train
CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/db/playroom --skip_train
CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/db/drjohnson --skip_train

CUDA_VISIBLE_DEVICES=1 python metrics.py -m output/SteepGS/mipnerf360/bicycle
CUDA_VISIBLE_DEVICES=1 python metrics.py -m output/SteepGS/mipnerf360/flowers
CUDA_VISIBLE_DEVICES=1 python metrics.py -m output/SteepGS/mipnerf360/garden
CUDA_VISIBLE_DEVICES=1 python metrics.py -m output/SteepGS/mipnerf360/stump
CUDA_VISIBLE_DEVICES=1 python metrics.py -m output/SteepGS/mipnerf360/treehill
CUDA_VISIBLE_DEVICES=1 python metrics.py -m output/SteepGS/mipnerf360/room
CUDA_VISIBLE_DEVICES=1 python metrics.py -m output/SteepGS/mipnerf360/counter
CUDA_VISIBLE_DEVICES=1 python metrics.py -m output/SteepGS/mipnerf360/kitchen
CUDA_VISIBLE_DEVICES=1 python metrics.py -m output/SteepGS/mipnerf360/bonsai
CUDA_VISIBLE_DEVICES=1 python metrics.py -m output/SteepGS/tandt/truck
CUDA_VISIBLE_DEVICES=1 python metrics.py -m output/SteepGS/tandt/train
CUDA_VISIBLE_DEVICES=1 python metrics.py -m output/SteepGS/db/playroom
CUDA_VISIBLE_DEVICES=1 python metrics.py -m output/SteepGS/db/drjohnson