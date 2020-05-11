#!/bin/bash
export TRAIN_FILE=train
export EVAL_FILE=test
# run_language_modeling_with_tokenizers.py -- it's the version with support for fast tokenizers, see above
python run_language_modelling_edits.py \
    --train_data_file $TRAIN_FILE \
    --eval_data_file $EVAL_FILE \
    --output_dir ./bnc_roberta \
    --model_name_or_path roberta-base \
    --model_type roberta \
    --mlm \
    --config_name ./bnc_roberta_config \
    --tokenizer_name ./bnc_roberta_config \
    --do_train \
    --do_eval \
    --line_by_line \
    --learning_rate 1e-5 \
    --num_train_epochs 5 \
    --save_total_limit 20 \
    --save_steps 5000 \
    --per_gpu_train_batch_size 8 \
    --warmup_steps=10000 \
    --logging_steps=100 \
    --gradient_accumulation_steps=4 \
    --seed 666 --block_size=512