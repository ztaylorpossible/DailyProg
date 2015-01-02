# Daily Programmer Easy Challenge #37 July 13, 2013
# Summary:
# Write a program that takes a file as an argument
# Output: Counts the total number of lines.
# Bonus: Count the number of words

lines = 0
words = 0

puts "Enter in the name of the file to read: "
file = IO.binread(gets.chomp)
file.each_line do |line|
  temp = line.split(" ")
  words += temp.length
  lines += 1
end

puts "This file has #{lines} lines and #{words} words."