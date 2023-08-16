#paragraph variable
paragraph <- readline("Enter the paragraph you want to process : ")
word_to_be_replaced <- readline("Enter the word you have to replace: ")
replacing_word <- readline("Enter the replacing word: ")

print(paste("Paragraph you have entered ",paragraph))

words_in_paragraph <- strsplit(paragraph, " +")[[1]]     
print(paste("The total number of words is ", length(words_in_paragraph)))

longest_word_length <- 0
longest_word <- ""
total_char <- 0

for (word in words_in_paragraph) {
  total_char <- total_char + nchar(word)
  if (nchar(word) > longest_word_length) {
    longest_word <- word
    longest_word_length <- nchar(word)
  }
}

replaced_strings <- gsub(word_to_be_replaced, replacing_word, words_in_paragraph)

print(paste(replaced_strings, collapse = " "))
average_character_count = total_char / length(words_in_paragraph)
print(paste("The average word length is ", average_character_count))
print(paste("The longest word is ", longest_word, " with length ", longest_word_length))
