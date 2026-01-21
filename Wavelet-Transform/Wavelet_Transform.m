clc;                % Clear command window
clear all;          % Remove all variables from workspace
close all;          % Close all open figure windows

% Read the input image from file
I = imread('lina.jpg');

% Display the original RGB image
imshow(I);
figure;

% Convert RGB image to grayscale
% Wavelet transform works on single-channel images
Ig = rgb2gray(I);
imshow(Ig);

% Perform 2-D Discrete Wavelet Transform using Haar wavelet
% Ia : Approximation (low-frequency components)
% Iv : Vertical detail coefficients
% Ih : Horizontal detail coefficients
% Id : Diagonal detail coefficients
[Ia, Iv, Ih, Id] = dwt2(Ig, 'haar');

% Convert wavelet coefficients to uint8 for proper visualization
Ia = uint8(Ia);
Iv = uint8(Iv);
Ih = uint8(Ih);
Id = uint8(Id);

% Display Approximation sub-band
figure;
imshow(Ia);

% Display Vertical detail sub-band
figure;
imshow(Iv);

% Display Horizontal detail sub-band
figure;
imshow(Ih);

% Display Diagonal detail sub-band
figure;
imshow(Id);

% Reconstruct the image using Inverse Discrete Wavelet Transform
x = idwt2(Ia, Iv, Ih, Id, 'haar');

% Convert reconstructed image to uint8
x = uint8(x);

% Display reconstructed image
figure;
imshow(x);
