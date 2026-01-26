# Experiment: Bit Plane Slicing and Bit Plane Removal

## Objective
To analyze an 8-bit grayscale image by decomposing it into individual **bit planes** and study the effect of removing selected bit planes on image quality.

---

## Theory
In an 8-bit grayscale image, each pixel is represented by **8 bits**:

- Bit planes range from **0th (LSB)** to **7th (MSB)**
- Lower bit planes contain **fine details and noise**
- Higher bit planes contain **major visual information**

Bit Plane Slicing helps in understanding the **importance of individual bits** in image representation.

---

## Procedure
1. Read a grayscale image  
2. Extract each bit plane using bitwise AND operation  
3. Display individual bit planes  
4. Remove selected bit planes (0th, 5th, and 7th)  
5. Observe changes in the reconstructed image  

---

## MATLAB Functions Used
- `imread`
- `imshow`
- `bitand`
- `uint8`

---

## Observations
- MSB planes contribute most to image clarity  
- Removing lower bit planes causes minimal distortion  
- Removing higher bit planes significantly degrades image quality  

---

## Applications
- Image compression  
- Image watermarking  
- Image enhancement  
- Noise analysis  

---

## Conclusion
Bit Plane Slicing provides insight into how image information is distributed across bits and is essential for image processing and compression techniques.
