# Program to input your name and find its length

# Input your name from the user
name <- readline("Enter your name: ")

# Calculate and print the length of the name
name_length <- nchar(name)
cat("Your name has", name_length, "characters.\n")
