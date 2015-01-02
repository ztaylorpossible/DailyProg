# Daily Programmer Easy Challenge #33 July 10, 2013
# Summary:
# Write a program that prints a string from a list at random, expects input,
# checks for a right or wrong answer, and keeps doing it until the user types
# "exit". If given the right answer for the string printed, it will print another
# and continue on. If the answer is wrong, the correct answer is printed and the
# program continues.
# Bonus: Instead of defining the values in the program, the questions/answers is in
# a file, formatted for easy parsing.
# Example file:
# 12 * 12?,144
# What is reddit?,website with cats
# Translate: hola,hello
question = Array.new
answer = Array.new
lines = 0
input = "default"

puts "Enter the name of the file to use: "
file = IO.binread(gets.chomp)
file.each_line do |line|
  whole_line = line.split(",")
  question.push(whole_line[0])
  answer.push(whole_line[1].strip)
  lines += 1
end

while input != "exit"
  pick_line = rand(lines)
  puts question[pick_line]
  input = gets.chomp
  if input == answer[pick_line]
  	puts "Correct!"
  elsif input != "exit"
  	puts "Correct answer is: #{answer[pick_line]}"
  end
end