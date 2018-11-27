library(tidyverse)

#set 'words' to lowercase for ease of parsing
words_lowercase <- str_to_lower(words)

#create a vector of letter with patterns that will be recognized as
#regular expressions for "begins with *"
letters_for_regex <- str_c("^", letters)

#collapse into one string
letter_match <- str_c(letters_for_regex, collapse = "|")

#find and extract matches
matches <- str_extract(words_lowercase, letter_match)

#create a frequency table
Letters <- table(matches)

#write to .tsv
write.table(Letters, "histogram2.tsv",
						sep = "\t", row.names = FALSE, quote = FALSE)
