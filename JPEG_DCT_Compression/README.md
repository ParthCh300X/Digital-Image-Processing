# JPEG DCT Compression

## Objective
To study and implement JPEG image compression using the Discrete Cosine Transform (DCT) technique in MATLAB and understand how frequency-domain compression reduces image size.

## Description
JPEG compression is a widely used lossy image compression standard based on the Discrete Cosine Transform (DCT).  
This project demonstrates how an image is transformed from the spatial domain to the frequency domain, quantized, and reconstructed to achieve compression with acceptable visual quality.

The experiment highlights the role of DCT and quantization in removing perceptually insignificant information.

## Files Included
- `JPEG_DCT_Compression.m` – MATLAB source code for JPEG DCT compression  
- `JPEG_DCT_Compression.pdf` – MATLAB published report with results  

## Operations Performed
- Conversion of image to grayscale  
- Division of image into blocks  
- Application of DCT on image blocks  
- Quantization of DCT coefficients  
- Reconstruction of compressed image  

## Methodology
1. Read the input image  
2. Convert the image to grayscale  
3. Divide image into fixed-size blocks  
4. Apply DCT to each block  
5. Quantize DCT coefficients  
6. Reconstruct the compressed image  

## Tools Used
- MATLAB (Image Processing Toolbox)

## Author
**Parth**
