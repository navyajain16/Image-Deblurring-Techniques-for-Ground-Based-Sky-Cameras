% Reading images in directory
I = dir(['C:\Evaluation\SWIMCAT,*.png]);

%Create a PSF that represents a Gaussian blur with standard deviation 5 and filter of size 5-by-5         
PSF = fspecial('gaussian',5,5);PSF = fspecial('gaussian',5,5);         

%Simulate blur in the image.
blurred = imfilter(I,PSF,'symmetric','conv');   
      
