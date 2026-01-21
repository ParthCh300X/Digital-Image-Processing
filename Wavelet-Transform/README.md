# Wavelet Transform using Haar Wavelet

## Objective
To perform a two-dimensional Discrete Wavelet Transform (DWT) on an image
using the Haar wavelet and analyze its approximation and detail
components, followed by reconstruction of the original image using the
Inverse Discrete Wavelet Transform (IDWT).

## Description
Wavelet Transform is a powerful tool in Digital Image Processing for
multi-resolution analysis. Unlike Fourier Transform, wavelets provide
both spatial and frequency information, making them suitable for image
compression, denoising, and feature extraction.

In this experiment, a grayscale image is decomposed into four sub-bands
using the Haar wavelet:
- Approximation (low-frequency components)
- Horizontal details
- Vertical details
- Diagonal details

The original image is then reconstructed using the inverse wavelet
transform to verify the correctness of decomposition.

## Files Included
- `wavelet_transform.m` : MATLAB source code for DWT and IDWT using Haar wavelet
- `wavelet_transform.pdf` : Published MATLAB report with outputs

## Methodology
1. Read the input RGB image
2. Convert the image to grayscale
3. Apply 2-D Discrete Wavelet Transform using Haar wavelet
4. Extract approximation and detail coefficients
5. Visualize all sub-bands
6. Reconstruct the image using Inverse DWT
7. Compare reconstructed image with original

## Wavelet Used
- Haar Wavelet

## Tools Used
- MATLAB
- Image Processing Toolbox
- Wavelet Toolbox

## Academic Reference
Standard implementation of Haar wavelet-based DWT as used in Digital
Image Processing laboratories and textbooks :contentReference[oaicite:0]{index=0}

## Author
Parth
