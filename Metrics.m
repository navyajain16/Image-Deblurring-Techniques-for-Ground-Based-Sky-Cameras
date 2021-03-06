Directory = 'C:\Evaluation\clearo'; %Name of the first directory that is the one containing the deblurred images.
Directory2 = 'C:\Evaluation\clear';  %Name of the first directory that is the one containing the original images.
% Read images from Images folder
Imgs = dir(Directory);
Imgs2=dir(Directory2);
for j=1:length(Imgs)
    
    thisname = Imgs(j).name;
    thisname2 = Imgs2(j).name;
    thisfile = fullfile(Directory, thisname);
    thisfile2 = fullfile(Directory2, thisname2);
    try
      Img = imread(thisfile);  % try to read image
      Img2 = imread(thisfile2);
%       %Im = Img(:,:,1);
%      % Im2 = Img2(:,:,1);
%     figure, imshow(thisfile);
%       title(thisname);
%     figure, imshow(thisfile2);
%       title(thisname2);
%      % title(thisname2);
% 
%Code for SSIM
ssimval = ssim(Img2,Img);
%Code for PSNR
peaksnr = psnr(Img2,Img)  
fprintf('\n The PSNR value is %0.4f',ssimval);
%fprintf(peaksnr);
   catch
   end
end
