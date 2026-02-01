# Arithmetic Encoding

## Objective
To implement Arithmetic Encoding, a lossless data compression technique, using MATLAB and understand how symbol probabilities are used to encode a complete message into a single fractional range.

## Description
Arithmetic Encoding is an entropy-based compression method in which an entire message is represented as a fractional interval within the range `[0, 1)`.  
This project demonstrates the step-by-step encoding process using cumulative probabilities for each symbol in the input message.

## Files Included
- `arithmetic_encoding.m` – MATLAB source code for arithmetic encoding  
- `arithmetic_encoding.pdf` – MATLAB published report with results  

## Operations Performed
- Definition of symbol set and corresponding probabilities  
- Calculation of cumulative probabilities  
- Iterative interval refinement for each symbol  
- Generation of final encoded range  

## Methodology
1. Define symbols and their probabilities  
2. Compute cumulative probability ranges  
3. Initialize the interval `[0, 1)`  
4. Update the interval for each symbol in the message  
5. Obtain the final encoded range  

## Tools Used
- MATLAB

## Author
**Parth**

