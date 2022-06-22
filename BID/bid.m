% Set the random number generator back to its default settings for
% consistency in results.
rng default;

%Read image
I = imread('C:\Evaluation\veil.png'); % name of the image

%%Create a PSF that represents a Gaussian blur with standard deviation 5 and filter of size 5-by-5.
PSF = fspecial('gaussian',5,10);

%Simulate blur in the image.
blurred = imfilter(I,PSF,'symmetric','conv');

% Perform blind image deconvolution
[J P] = deconvblind(blurred,PSF,20,10*sqrt(V),WT);

