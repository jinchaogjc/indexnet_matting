#!/usr/bin/env bash
# adobe image matting
export CUDA_VISIBLE_DEVICES=1
python ./scripts/nrd_train.py \
--num-workers 16 \
--exp indexnet_matting \
--data-dir /media/data/yifan/jinchao/code/indexnet_datasets/Combined_Dataset \
--data-list ./lists/train.txt \
--data-val-list ./lists/test.txt \
--output-stride 32 \
--conv-operator std_conv \
--backbone mobilenetv2 \
--decoder mitb2_nrd_b0 \
--indexnet depthwise \
--index-mode m2o \
--use-nonlinear \
--use-context \
--decoder-kernel-size 5 \
--batch-size 16 \
--crop-size 320 \
--num-epochs 30 \
--learning-rate 1e-2 \
--random-seed 6 \
--apply-aspp \
--result-dir ./results_mitb2_nrd_b0