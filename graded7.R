# graded7.R
# Tiffany Agosto-Martinez
# 10/22/2026
# Normal Distribution using R

mean_value <- 10 # center of normal distribution
var_value <- 2 # variance ("spread") value
sd_value <- sqrt(var_value) # Standard Deviation 

# Find the probability of the length of a blade of grass between 9.5mm and 11mm
p_upper <- pnorm(11, mean = mean_value, sd = sd_value)
p_lower <- pnorm(9.5, mean = mean_value, sd = sd_value)

# subtract lower bound form upper bound
prob_1 <- p_upper - p_lower

# print results
cat("Probability blade is between 9.5 and 11 mm:", prob_1, "\n")

# Calculate z-scores using formula z = (x - mean_value) / sd_value
z_9.5 <- (9.5 - mean_value) / sd_value
z_11 <- (11 - mean_value) / sd_value

# Compute probability of z-scores using pnorm()
prob_2 <- pnorm(z_11) - pnorm(z_9.5)

# print results
cat("Probability from Z-scores for 9.5 and 11 mm:", prob_2, "\n")

# use quantile function to find the 2.5 percentile
blade_length_2.5 <- qnorm(0.025, mean = mean_value, sd = sd_value)

# print results
cat("Blade length below shortest 2.5%:", blade_length_2.5, "mm\n")

# convert percentile blade length to a standard z-score
z_shortest <- (blade_length_2.5 - mean_value) / sd_value

# print results
cat("Z-score of shortest 2.5% blade:", z_shortest, "\n")