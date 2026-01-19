# Histogram Equalisation

## Objective
To enhance the contrast of a grayscale image using the technique of
histogram equalisation, implemented through a mathematical approach
based on probability density function (PDF) and cumulative distribution
function (CDF).

## Description
Histogram equalisation redistributes the pixel intensity values of an
image so that the output histogram spans the complete intensity range.
This improves global contrast, especially in images with poor dynamic
range.

In this implementation, the algorithm is coded explicitly without using
built-in MATLAB functions, following the standard example and explanation
provided in Wikipedia.

## Files Included
- `histogram_equalisation.m` : MATLAB source code implementing histogram equalisation
- `histogram_equalisation.pdf` : Published MATLAB report with results

## Methodology
1. Read the input image and convert it to grayscale if required
2. Compute the histogram of pixel intensities
3. Normalize the histogram to obtain the PDF
4. Compute the CDF from the PDF
5. Map old intensity values to new values using the CDF
6. Generate the equalised image and plot histograms

## Reference
Wikipedia – Histogram Equalization  
(Algorithm followed as demonstrated in the standard example) 0

## Tools Used
- MATLAB (Image Processing Toolbox)

## Author
Parth
