
export CUDA_VISIBLE_DEVICES=3
export NGPUS=1

# Single dataset
# python -m torch.distributed.launch  --nproc_per_node=$NGPUS --master_port 9992 \
python train.py \
--data_path $DATA_PATH \
--train_data f30k_precomp.en \
--val_data f30k_precomp.en \
--outpath $OUT_PATH/lavse/clmr_gru/f30k_precomp.en/ \
--beta 0.991 \
--lr 6e-4 \
--workers 1 \
--text_encoder gru \
--ngpu $NGPUS \
--vocab_path vocab/f30k_vocab.json \
--early_stop 100 \
--image_encoder hierarchical \
--text_repr word \
--text_pooling mean \



export CUDA_VISIBLE_DEVICES=2
export NGPUS=1

# Single dataset
# python -m torch.distributed.launch  --nproc_per_node=$NGPUS --master_port 9992 \
python train.py \
--data_path $DATA_PATH \
--train_data f30k_precomp.en \
--val_data f30k_precomp.en \
--outpath $OUT_PATH/lavse/liwe_gru_1024_512/f30k_precomp.en/ \
--beta 0.991 \
--lr 6e-4 \
--workers 1 \
--text_encoder liwe_gru_1024_512 \
--ngpu $NGPUS \
--vocab_path vocab/char.json \
--early_stop 100 \
--image_encoder hierarchical \
--text_repr liwe \
--text_pooling mean \



export CUDA_VISIBLE_DEVICES=0
export NGPUS=1

# Single dataset
# python -m torch.distributed.launch  --nproc_per_node=$NGPUS --master_port 9992 \
python train.py \
--data_path $DATA_PATH \
--train_data f30k_precomp.en \
--val_data f30k_precomp.en \
--outpath $OUT_PATH/lavse/liwe_convgru_256_256/f30k_precomp.en/ \
--beta 0.991 \
--lr 6e-4 \
--workers 1 \
--text_encoder liwe_convgru_256_256 \
--ngpu $NGPUS \
--vocab_path vocab/char.json \
--early_stop 100 \
--image_encoder hierarchical \
--text_repr liwe \
--text_pooling mean \


export CUDA_VISIBLE_DEVICES=0
export NGPUS=1

# Single dataset
# python -m torch.distributed.launch  --nproc_per_node=$NGPUS --master_port 9992 \
python train.py \
--data_path $DATA_PATH \
--train_data m30k_precomp.en \
--val_data m30k_precomp.en \
--outpath $OUT_PATH/lavse/liwe_gru_384/m30k_precomp.en/ \
--beta 0.991 \
--lr 6e-4 \
--workers 1 \
--text_encoder liwe_gru_384 \
--vocab_path vocab/char.json \
--early_stop 100 \
--image_encoder hierarchical \
--text_repr liwe \
--text_pooling mean \



# Single dataset
# python -m torch.distributed.launch  --nproc_per_node=$NGPUS --master_port 9992 \
python train.py \
--data_path $DATA_PATH \
--train_data f30k_precomp.en \
--val_data f30k_precomp.en \
--outpath $OUT_PATH/lavse/liwe_gru_256_max/f30k_precomp.en/ \
--beta 0.991 \
--max_violation \
--lr 6e-4 \
--workers 1 \
--text_encoder liwe_gru_384 \
--vocab_path vocab/char.json \
--early_stop 100 \
--image_encoder hierarchical \
--text_repr liwe \
--text_pooling mean \


python train.py \
--data_path $DATA_PATH \
--train_data m30k_precomp.en \
--val_data m30k_precomp.en \
--outpath $OUT_PATH/lavse/liwe_gru_256_sum/m30k_precomp.en/ \
--beta 1. \
--lr 6e-4 \
--workers 1 \
--text_encoder liwe_gru_384 \
--vocab_path vocab/char.json \
--early_stop 100 \
--image_encoder hierarchical \
--text_repr liwe \
--text_pooling mean \




export CUDA_VISIBLE_DEVICES=1
export NGPUS=1

# Single dataset
# python -m torch.distributed.launch  --nproc_per_node=$NGPUS --master_port 9992 \
python train.py \
--data_path $DATA_PATH \
--train_data f30k_precomp.en \
--val_data f30k_precomp.en \
--outpath $OUT_PATH/lavse/liwe_gru_gru/f30k_precomp.en/ \
--beta 0.991 \
--lr 6e-4 \
--workers 1 \
--text_encoder liwe_gru_gru \
--ngpu $NGPUS \
--vocab_path vocab/char.json \
--early_stop 100 \
--image_encoder hierarchical \
--text_repr liwe \
--text_pooling mean \


# 'lr': 6e-4,
#         'margin': 0.2,
#         'latent_size': 1024,
#         'grad_clip': 2.,
#         'workers': 2,
#         'text_encoder': 'liwe_gru',
#         'image_encoder': 'hierarchical',
#         'text_pooling': 'mean',
#         'text_repr': 'liwe',
#         'early_stop': 5,
#         'nb_epochs': 30,
#         'initial_k': 0.9,
#         'increase_k': 0.1,
#         'vocab_path': 'vocab/char.json',
