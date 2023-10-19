# Function to check if a number is prime
is_prime <- function(num) {
  if (num <= 1) {
    return(FALSE)
  }
  for (i in 2:sqrt(num)) {
    if (num %% i == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}

# Function to find prime numbers within a range
find_primes_in_range <- function(start, end) {
  primes <- c()
  for (i in start:end) {
    if (is_prime(i)) {
      primes <- c(primes, i)
    }
  }
  return(primes)
}

# Get user input for a single number or a range
choice <- readline("Enter '1' to check a single number or '2' to find primes in a range: ")
choice <- as.numeric(choice)

if (choice == 1) {
  num <- as.numeric(readline("Enter a number to check for primality: "))
  if (is_prime(num)) {
    cat(num, "is a prime number.\n")
  } else {
    cat(num, "is not a prime number.\n")
  }
} else if (choice == 2) {
  start <- as.numeric(readline("Enter the start of the range: "))
  end <- as.numeric(readline("Enter the end of the range: "))
  prime_numbers <- find_primes_in_range(start, end)
  cat("Prime numbers in the range (", start, "-", end, "): ", prime_numbers, "\n")
} else {
  cat("Invalid choice. Please enter '1' or '2'.\n")
}
