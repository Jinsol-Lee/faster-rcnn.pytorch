# Fingernail detection
## Data preparation
Hundreds of fingernail images have been captured and labeled. These images have been prepared following the format of VOC 2007 dataset, which is a popular dataset for object detection.
[Download fingernail images](). Please unzip this file in the directory of `data/`. The folder structure is listed as follows: 
```
olivesdevkit2019
    |----olives2019
        |----Annotations
        |----ImageSets
        |----JPEGImages
```
Folders `JPEGImages` and `Annotations` stores all collected images and corresponding label information. When adding new images, the corresponding label information in xml files should be added accordingly. 


## Pretrained models
The detection network based on faster RCNN contains two main parts, one for feature extraction, and the other for generating bounding boxes and roi pooling. The feature extraction network can be implemented by [VGG16 or ResNet 101](https://www.dropbox.com/s/5b98dog37d9ep6e/pretrained_VGG_ResNet101.zip?dl=0). Please download these pretrained models (in pth format) to the directory `data/pretrained_model`. 
Some pretrained models for the entired network have been uploaded to the dropbox, which may still need to be finetuned. [Download pretrained model for the entire network](https://www.dropbox.com/s/mt0v1d9ss9vu9fe/faster_rcnn_1_2_655.pth?dl=0). Please place the downloaded model in the directory `models/vgg16/fingernail_olives`. 

### How to train and test in fingernail dataset

Train:
```
$ CUDA_VISIBLE_DEVICES=0 python trainval_net.py --dataset fingernail_olives --net vgg16 \
                   --bs 1 --nw $WORKER_NUMBER --lr 0.001 --cuda
```
Test: 
```
$ python test_net.py --dataset fingernail_olives --net vgg16 \
                   --checksession 1 --checkepoch 2 --checkpoint 655 \
                   --cuda  --viz

```
