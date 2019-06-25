a=VideoReader('sample.mp4');
for img = 1:a.NumberOfFrames;
    fames=strcat('frame',num2str(img),'.jpg');
    b = read(a, img);
    imshow(b);
    imwrite(b,fames);
end
movie(img)

