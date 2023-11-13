# Function to generate Fibonacci series with a twist
generate_fibonacci_twist <- function(n) {
  if (n <= 0) {
    return(NULL)
  } else if (n == 1) {
    return(0)
  } else if (n == 2) {
    return(1)
  }
  series <- numeric(n)
  series[1] <- 0
  series[2] <- 1
  for (i in 3:n) {
    series[i] <- sum(series[(i-2):(i-1)])
  }
  return(series)
}

# Get user input for the number of terms
n <- as.numeric(readline("Enter the number of terms in the Fibonacci series: "))

if (n <= 0) {
  cat("Please enter a positive integer.\n")
} else {
  fibonacci_series <- generate_fibonacci_twist(n)
  cat("Fibonacci series with a twist (", n, " terms): ", fibonacci_series, "\n")
}
