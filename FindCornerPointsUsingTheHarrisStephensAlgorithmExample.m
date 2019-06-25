

P=imread('c.jpg');
I=rgb2gray(P);
I=im2double(I);
corners = detectHarrisFeatures(I) ;

imshow(I); hold on;
plot(corners.selectStrongest(50)); 