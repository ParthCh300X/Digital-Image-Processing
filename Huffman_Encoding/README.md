# Experiment: Huffman Encoding Algorithm

## Objective
To implement **Huffman Encoding** for a given set of symbols and their probabilities, generate optimal prefix codes, and compute the **average code length**.

---

## Theory
Huffman Encoding is a **lossless data compression technique** that assigns variable-length binary codes to symbols based on their probabilities of occurrence.

- Symbols with **higher probability** get **shorter codes**
- Symbols with **lower probability** get **longer codes**
- Ensures **minimum average code length**

The algorithm builds a **binary tree** by repeatedly combining the two least probable symbols.

---

## Algorithm Steps
1. Define symbols and their probabilities  
2. Create leaf nodes for each symbol  
3. Sort nodes in ascending order of probability  
4. Merge the two least probable nodes  
5. Repeat until a single root node remains  
6. Traverse the tree to assign binary codes  
7. Calculate the average code length  

---

## MATLAB Functions Used
- `struct`
- `sort`
- `containers.Map`
- Recursive function for tree traversal

---

## Output
- Huffman codes for each symbol  
- Average code length in bits per symbol  

---

## Applications
- Data compression (ZIP, JPEG, MP3)
- Information theory
- Communication systems

---

## Conclusion
Huffman Encoding efficiently reduces redundancy in data and achieves optimal compression for known symbol probabilities.
