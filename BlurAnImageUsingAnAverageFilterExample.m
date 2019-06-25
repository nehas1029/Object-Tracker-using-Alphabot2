%% Blur an Image Using an Average Filter
% Read and display the input image.

% Copyright 2015 The MathWorks, Inc.

   I = imread('abcd.png');
  I=rgb2gray(I);
   I=im2double(I);
   imshow(I);
%% 
% Compute the integral image.
   intImage = integralImage(I);
%%
% Apply a 7-by-7 average filter.
   avgH = integralKernel([1 1 8 10], 1/80);
   J = integralFilter(intImage, avgH);
%%
% Cast the result back to the same class as the input image.
   J =im2double(J);
   figure
   imshow(J);