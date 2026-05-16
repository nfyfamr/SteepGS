WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/mipnerf360/bicycle -m output/SteepGS/mipnerf360/bicycle --eval --no_gui --densify_strategy steepest --optimizer_type sparse --grad_abs_thresh 0.0012
WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/mipnerf360/flowers -m output/SteepGS/mipnerf360/flowers --eval --no_gui --densify_strategy steepest --optimizer_type sparse --percent_dense 0.005 --grad_abs_thresh 0.0015
WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/mipnerf360/garden -m output/SteepGS/mipnerf360/garden --eval --no_gui --densify_strategy steepest --optimizer_type sparse --highfeature_lr 0.02 --grad_abs_thresh 0.0008
WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/mipnerf360/stump -m output/SteepGS/mipnerf360/stump --eval --no_gui --densify_strategy steepest --optimizer_type sparse --percent_dense 0.004 --grad_abs_thresh 0.0015
WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/mipnerf360/treehill -m output/SteepGS/mipnerf360/treehill --eval --no_gui --densify_strategy steepest --optimizer_type sparse --percent_dense 0.01 --grad_abs_thresh 0.002
WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/mipnerf360/room -m output/SteepGS/mipnerf360/room --eval --no_gui --densify_strategy steepest --optimizer_type sparse --highfeature_lr 0.02 --grad_abs_thresh 0.0008
WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/mipnerf360/counter -m output/SteepGS/mipnerf360/counter --eval --no_gui --densify_strategy steepest --optimizer_type sparse --highfeature_lr 0.02 --grad_abs_thresh 0.0008
WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/mipnerf360/kitchen -m output/SteepGS/mipnerf360/kitchen --eval --no_gui --densify_strategy steepest --optimizer_type sparse --highfeature_lr 0.02 --grad_abs_thresh 0.0006
WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/mipnerf360/bonsai -m output/SteepGS/mipnerf360/bonsai --eval --no_gui --densify_strategy steepest --optimizer_type sparse --highfeature_lr 0.02 --grad_abs_thresh 0.0006
WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/tandt/truck -m output/SteepGS/tandt/truck --eval --no_gui --densify_strategy steepest --mult 0.7 --optimizer_type sparse --highfeature_lr 0.04 --grad_abs_thresh 0.0009
WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/tandt/train -m output/SteepGS/tandt/train --eval --no_gui --densify_strategy steepest --mult 0.7 --optimizer_type sparse --highfeature_lr 0.042 --percent_dense 0.01 --grad_abs_thresh 0.0015
WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/db/playroom -m output/SteepGS/db/playroom --eval --no_gui --densify_strategy steepest --mult 0.7 --optimizer_type sparse --highfeature_lr 0.0015 --percent_dense 0.003
WANDB_MODE=disabled CUDA_VISIBLE_DEVICES=1 python train.py -s ./data/db/drjohnson -m output/SteepGS/db/drjohnson --eval --no_gui --densify_strategy steepest --mult 0.7 --optimizer_type sparse --highfeature_lr 0.0025 --percent_dense 0.013 --grad_abs_thresh 0.0012

CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/mipnerf360/bicycle --skip_train
CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/mipnerf360/flowers --skip_train
CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/mipnerf360/garden --skip_train
CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/mipnerf360/stump --skip_train
CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/mipnerf360/treehill --skip_train
CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/mipnerf360/room --skip_train
CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/mipnerf360/counter --skip_train
CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/mipnerf360/kitchen --skip_train
CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/mipnerf360/bonsai --skip_train
CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/tandt/truck --skip_train --mult 0.7
CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/tandt/train --skip_train --mult 0.7
CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/db/playroom --skip_train --mult 0.7
CUDA_VISIBLE_DEVICES=1 python render.py -m output/SteepGS/db/drjohnson --skip_train --mult 0.7

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