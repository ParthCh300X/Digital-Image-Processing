# Tambola Ticket Generator using MATLAB

## Objective
To generate a valid **3×9 Tambola ticket** using MATLAB by applying
random permutations and logical constraints.

## Description
Tambola (Housie) tickets follow strict structural rules: each row must
contain exactly five numbers, each column must contain at least one
number, and values must lie within predefined column-wise ranges.

In this experiment, a Tambola ticket is generated using simple matrix
operations and random permutation logic. Column-wise ascending order is
maintained as per standard Tambola conventions.

## Files Included
- `tambola_ticket.m` : MATLAB script to generate a Tambola ticket
- `README.md` : Project documentation

## Methodology
1. Initialize a 3×9 zero matrix
2. Ensure at least one number in each column
3. Ensure exactly five numbers in each row
4. Generate column-wise Tambola numbers using random permutation
5. Sort numbers in ascending order within each column

## Tools Used
- MATLAB

## Applications
- Randomized matrix generation with constraints
- MATLAB array manipulation practice
- Educational demonstration of Tambola logic

## Author
Parth
