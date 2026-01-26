% Name        : Parth Chaudhary
% Date        : 26/01/2026
% Experiment  : Bit Plane Slicing and Bit Plane Removal

clc;
clear;
close all;

% Read image
I = imread('cameraman.tif');
figure, imshow(I), title('Original Image');

[m,n] = size(I);

% Preallocate bit planes
Bitp0 = zeros(m,n,'uint8');
Bitp1 = zeros(m,n,'uint8');
Bitp2 = zeros(m,n,'uint8');
Bitp3 = zeros(m,n,'uint8');
Bitp4 = zeros(m,n,'uint8');
Bitp5 = zeros(m,n,'uint8');
Bitp6 = zeros(m,n,'uint8');
Bitp7 = zeros(m,n,'uint8');

% Bit Plane Slicing
for ii = 1:m
    for jj = 1:n
        Bitp0(ii,jj) = bitand(I(ii,jj), 1);
        Bitp1(ii,jj) = bitand(I(ii,jj), 2);
        Bitp2(ii,jj) = bitand(I(ii,jj), 4);
        Bitp3(ii,jj) = bitand(I(ii,jj), 8);
        Bitp4(ii,jj) = bitand(I(ii,jj), 16);
        Bitp5(ii,jj) = bitand(I(ii,jj), 32);
        Bitp6(ii,jj) = bitand(I(ii,jj), 64);
        Bitp7(ii,jj) = bitand(I(ii,jj), 128);
    end
end

% Display bit planes (scaled for visibility)
figure, imshow(Bitp0*255), title('0th Bit Plane');
figure, imshow(Bitp1*255), title('1st Bit Plane');
figure, imshow(Bitp2*255), title('2nd Bit Plane');
figure, imshow(Bitp3*255), title('3rd Bit Plane');
figure, imshow(Bitp4*255), title('4th Bit Plane');
figure, imshow(Bitp5*255), title('5th Bit Plane');
figure, imshow(Bitp6*255), title('6th Bit Plane');
figure, imshow(Bitp7*255), title('7th Bit Plane');

% Bit Plane Removal
bitpr0 = zeros(m,n,'uint8');
bitpr5 = zeros(m,n,'uint8');
bitpr7 = zeros(m,n,'uint8');

for ii = 1:m
    for jj = 1:n
        bitpr0(ii,jj) = bitand(I(ii,jj), 255 - 2^0);
        bitpr5(ii,jj) = bitand(I(ii,jj), 255 - 2^5);
        bitpr7(ii,jj) = bitand(I(ii,jj), 255 - 2^7);
    end
end

figure, imshow(bitpr0), title('0th Bit Plane Removed');
figure, imshow(bitpr5), title('5th Bit Plane Removed');
figure, imshow(bitpr7), title('7th Bit Plane Removed');
