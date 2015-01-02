# Daily Programmer Easy Challenge #41 July 22, 2013
# Summary:
# Write a program that will accept a sentence as input and then output
# that sentence surrounded by some type of an ASCII decoration banner.
# Sample run:
# Enter a sentence: So long and thanks for all the fish
# Output
# *****************************************
# *                                       *
# *  So long and thanks for all the fish  *
# *                                       *
# *****************************************
# Bonus: If the sentence is too long, move words to the next line.

MAX_LENGTH = 74
longest = 0
index = 0   # index for current line to use for parsing
last_space = 0   # tracking spaces to break line at a space
formatted = ""   # formatted text to be built on line by line

puts "Please enter some text: "
text = gets.chomp
text.each_char.with_index do |x, y|
  last_space = index if x == " "
  if index == MAX_LENGTH && last_space > 0
  	longest = last_space if last_space > longest
    formatted << text.slice(y - index, last_space) << "\n"
    index = index - last_space - 1
    last_space = 0
  elsif y == text.length - 1
  	formatted << text.slice(y - index, index + 1) << "\n"
  	longest = index + 1 if longest == 0
  end
  index += 1
end

text.clear
text << "*" * (longest + 6) << "\n"
text << "*" << " " * (longest + 4) << "*\n" 
formatted.each_line do |line|
  text << "*  " << line.chomp << " " * (3 + longest - line.length) << "*\n"
end
text << "*" << " " * (longest + 4) << "*\n"
text << "*" * (longest + 6)

puts text