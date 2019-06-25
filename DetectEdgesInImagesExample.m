%% Detect Edges in Images
% This example shows how to detect edges in an image using both the Canny edge 
% detector and the Sobel edge detector.
% 
% Read image and display it.

I = imread('ab.jpg');
imshow(I);
I=rgb2gray(I);
I=im2double(I);

%%
BW1 = edge(I,'log');
BW2 = edge(I,'Prewitt');
figure;
imshowpair(BW1,BW2,'montage')
title('log Filter                                       Prewitt Filter');
%% 
% _Copyright 2015 The MathWorks, Inc._