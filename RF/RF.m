%Read Image
I = im2double(imread('veil.png'));
imshow(I);

%Create a PSF that represents a Gaussian blur with standard deviation 5 and filter of size 5-by-5.
PSF = fspecial('gaussian',5,5);
V = .01;

%Simulate blur in the image.
blurred = imfilter(I,PSF,'symmetric','conv');

%Deblur Image
[J LAGRA] = deconvreg(blurred,PSF);