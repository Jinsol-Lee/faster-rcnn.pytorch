CUDA_VISIBLE_DEVICES=0,1 \
                    python trainval_net.py \
                    --dataset fingernail_olives \
                    --net vgg16 \
                    --bs 2 \
                    --nw 4 \
                    --lr 0.001 \
                    --cuda \
                    --mGPUs \
                    --use_tfb
