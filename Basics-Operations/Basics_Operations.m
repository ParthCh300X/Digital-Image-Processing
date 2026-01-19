clc
clear
close all

I = imread('detet.jpg');
imshow(I);
figure
Ig = rgb2gray(I);
imshow(Ig);
Ired = I;
Ired(:,:,2)=0;
Ired(:,:,3)=0;
figure
imshow(Ired);
Ibw = Ig>120;
figure
imshow(Ibw);
Ieq = histeq(Ig);
figure
imshow(Ieq);