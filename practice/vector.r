# Program to accept a vector, find its sum, max, and min elements

# Input a vector of numbers from the user
vector_str <- readline("Enter a list of numbers separated by spaces: ")
vector <- as.numeric(unlist(strsplit(vector_str, " ")))

# Calculate the sum, max, and min
vector_sum <- sum(vector)
vector_max <- max(vector)
vector_min <- min(vector)

# Print the results
cat("Sum of the vector:", vector_sum, "\n")
cat("Maximum element in the vector:", vector_max, "\n")
cat("Minimum element in the vector:", vector_min, "\n")
