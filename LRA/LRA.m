%Read image
I = imread('veil.png');
imshow(I)
title('Original Image')

%Create a PSF that represents a Gaussian blur with standard deviation 5 and filter of size 5-by-5.
PSF = fspecial('gaussian',5,5);

%Simulate blur in the image.
blurred = imfilter(I,PSF,'symmetric','conv');

%Add simulated zero-mean Gaussian noise.
V = 0.002;
blurred_noisy = imnoise(blurred,'gaussian',0,V);
imshow(blurred_noisy)
title('Blurred and Noisy Image')

%Use deconvlucy to restore the blurred and noisy image.
luc1 = deconvlucy(blurred_noisy,PSF,5);
imshow(luc1)
title('Restored Image')
