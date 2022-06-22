% Set the random number generator back to its default settings for
% consistency in results.
rng default;

I = 'C:\Evaluation\veil'; % name of the directory containing blurred images
PSF = fspecial('gaussian',5,10);
V = .0001;
BlurredNoisy = imnoise(imfilter(I,PSF),'gaussian',0,V);


% Create a weight array to specify which pixels are included in processing.
WT = zeros(size(I));
WT(5:end-4,5:end-4) = 1;
INITPSF = ones(size(PSF));

% Perform blind image deconvolution
[J P] = deconvblind(BlurredNoisy,INITPSF,20,10*sqrt(V),WT);

