python test_net.py \
       --dataset fingernail_olives \
       --net vgg16 \
       --checksession 1 \
       --checkepoch 20 \
       --checkpoint 327 \
       --cuda \
       --vis \
       --load_dir 'models/trained/'
