#!/usr/bin/env bash

export CUDA_VISIBLE_DEVICES=1

beam_file_path=data/splits/submission_test_images.txt
beam_model_path=models/soft_attention_inception_v4_seed_117_ARNet/model_epoch-0.pth
beam_json_path=models/soft_attention_inception_v4_seed_117/model_epoch-0_beam_offline_test.json

python3 image_caption_soft_att_infb.py --lstm_size 512 \
                                         --beam_file_path "$beam_file_path" \
                                         --beam_model_path "$beam_model_path" \
                                         --beam_json_path "$beam_json_path"
echo $beam_file_path
echo $beam_model_path
echo $beam_json_path
