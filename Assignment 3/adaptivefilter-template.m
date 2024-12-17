% Adaptive local denoising filter
% COMP478/6771 - Image Processing Assignment 3

% read the image
I = imread('cameraman.tif');

% Add gaussian noise with variance 0.01 (in practice, this is not possible to know)
g = imnoise(I,'gaussian',0,0.01);
g = double(g);
figure; imshow(g,[]);

% Define the window size MxN
M = 5;
N = 5;

% pad the image a bit to allow window operation at the borders
G = padarray(g,[floor(N/2),floor(M/2)]);

% initiate the values in zero-filled matrices
lVar = zeros(size(g)); % local variance
lM = zeros(size(g)); % local mean

% Compute the entries of the local variance and mean with the MxN window
for i = 1:size(G,1)-(M-1)
	for j = 1:size(G,2)-(N-1)

% fill out the relevant code here **********

    end
end

% Estimate the noise variance
nVar = sum(lVar(:))/(size(g,1)*size(g,2));

% If noise_variance > local_variance, set local_variance = noise_variance
% fill out the relevant code here ***********

% Denoised the image the formula
ratio = nVar./lVar;
Denoise = g-ratio.*(g-lM);

figure; imshow(Denoise,[]);
