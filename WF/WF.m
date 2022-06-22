%Read Image
I = im2double(imread('veil.png'));
imshow(I);

%Create a PSF that represents a Gaussian blur with standard deviation 5 and filter of size 5-by-5.
PSF = fspecial('gaussian',5,5);

%Simulate blur in the image.
blurred = imfilter(I,PSF,'symmetric','conv');

%Deblur using wiener filter
estimated_nsr = 0;
wnr2 = deconvwnr(blurred, PSF, estimated_nsr);
figure, imshow(wnr2)
title('Restoration of Blurred Image Using NSR = 0')