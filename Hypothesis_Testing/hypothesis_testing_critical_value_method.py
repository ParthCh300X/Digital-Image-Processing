"""
Hypothesis Testing using Critical Value Method
Left-tailed Z-test

Name    : Parth Chaudhary
Roll No : BT23ECI045
Subject : Digital Image Processing
"""

import math
from scipy.stats import norm

# --------------------------------------------------
# Problem Data (as given in the question)
# --------------------------------------------------

mu0 = 500        # Claimed mean battery life (hours)
xbar = 485       # Sample mean (hours)
sigma = 60       # Population standard deviation (hours)
n = 36           # Sample size
alpha = 0.05     # Level of significance

# --------------------------------------------------
# Step 1: Calculate standard error
# --------------------------------------------------

standard_error = sigma / math.sqrt(n)

# --------------------------------------------------
# Step 2: Calculate Z-test statistic
# --------------------------------------------------

z_statistic = (xbar - mu0) / standard_error

# --------------------------------------------------
# Step 3: Find critical Z value (left-tailed test)
# --------------------------------------------------

z_critical = norm.ppf(alpha)

# --------------------------------------------------
# Step 4: Calculate Lower Critical Value (LCV)
# --------------------------------------------------

lower_critical_value = mu0 + z_critical * standard_error

# --------------------------------------------------
# Step 5: Decision rule
# --------------------------------------------------

if xbar < lower_critical_value:
    decision = "Reject H0"
else:
    decision = "Fail to Reject H0"

# --------------------------------------------------
# Step 6: Display results
# --------------------------------------------------

print("HYPOTHESIS TESTING - CRITICAL VALUE METHOD\n")

print("Given Data:")
print(f"Population mean (mu0)        = {mu0}")
print(f"Sample mean (xbar)           = {xbar}")
print(f"Population std deviation     = {sigma}")
print(f"Sample size (n)              = {n}")
print(f"Level of significance (alpha)= {alpha}\n")

print("Hypotheses:")
print("H0: mu >= 500")
print("H1: mu < 500\n")

print("Calculations:")
print(f"Standard Error               = {standard_error:.4f}")
print(f"Z-test statistic             = {z_statistic:.4f}")
print(f"Critical Z value             = {z_critical:.4f}")
print(f"Lower Critical Value (LCV)   = {lower_critical_value:.4f}\n")

print("Decision:")
print(decision)
