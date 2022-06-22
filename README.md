# Image-Deblurring-Techniques-for-Ground-Based-Sky-Cameras
With the spirit of reproducible research, this repository contains all the codes required to produce the results in the manuscript:

> N. Jain, M. Jain, and S. Dev, Image Deblurring Techniques for Ground Based Sky Cameras (Accepted)

### Dataset
In this paper we have used Singapore Whole‐sky Imaging Categories (SWIMCAT) dataset [1]. The dataset consists of $784$ cloud images classified into 5 classes, namely, clear sky, pattern clouds, thick dark clouds, thick white clouds, and veil clouds of size 125X125 pixels.

### Executive summary
In this paper we have applied various image deblurring algorithms to the SWIMCAT dataset and extensively analyzed their effects on different cloud types. 

Our approach is as follows:
1. First we apply various deblurring algorithms to images blurred synthetically with Gaussian Blur. 
2. Then we analyzed the results obtained both subjectively (Mannually) and objectively (Using PSNR and SSIM metrics).

### Environment 
This project was tested on `python 3.8` and `MATLAB 2021b`.

### Scripts
+ `LRA`: This folder contains the code for deblurring images using Lucy Richardson Algorithm.
+ `BID`: This folder contains the code for deblurring images using Blind image deconvloution Algorithm.
+ `WF`: This folder contains the code for deblurring images using Wiener Filter.
+ `RF`: This folder contains the code for deblurring images using Regularized Filter.
+ `DGAN(2018)`: This folder contains the code for deblurring images using DeblurGAN [2]. This code was picked up from https://github.com/KupynOrest/DeblurGAN. This repo does not contain the model weights and the dataset used for training DeblurGAN. For the model weights and dataset kindly visit the link provided above.
+ `DSD(2019)`: This folder contains the code for deblurring images using Parameter Selective Sharing and Nested Skip Connections [3]. This code was picked up from https://github.com/firenxygao/deblur. This repo does not contain the model weights and the dataset used for training Parameter Selective Sharing and Nested Skip Connections. For the model weights and dataset kindly visit the link provided above.
+ `MPRNet`: This folder contains the code for deblurring images using MPRNet [4]. This code was picked up from https://github.com/swz30/MPRNet. This repo does not contain the model weights and the dataset used for training MPRNet. For the model weights and dataset kindly visit the link provided above.
+ `Metrics.m`: This file contains the code for PSNR and SSIM metrics used for objective evaluation of the images.
+ `blur.m`: This file contains the code for adding gaussian blur to the images.

### References

[1] `Dev et al.` S. Dev, Y. H. Lee, and S. Winkler. Categorization of cloud image patches using an improved texton-based approach. In 2015 IEEE International Conference on Image Processing (ICIP), pages 422–426. IEEE, 2015

[2] `Kupyn et al.` O. Kupyn, V. Budzan, M. Mykhailych, D. Mishkin, and J. Matas. Deblurgan: Blind motion deblurring using conditional adversarial networks. In Proceedings of the IEEE conference on computer vision and pattern recognition, pages 8183–8192, 2018.

[3] `Gao et al.` H. Gao, X. Tao, X. Shen, and J. Jia. Dynamic scene deblurring with parameter selective sharing and nested skip connections. In Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition, pages 3848–3856, 2019.

[4] `Zamir et al.` S. W. Zamir, A. Arora, S. Khan, M. Hayat, F. S. Khan, M.-H. Yang, and L. Shao. Multi-stage progressive image restoration. In Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition, pages 14821–14831, 2021
