# Daily Programmer Easy Challenge #1 June 14, 2013
# Create a program that will ask the user's name, age, and reddit username. Have it tell them
# the information back, in the format:
# "Your name is (blank), you are (blank) years old, and your username is (blank)"
# For extra credit, have the program log this information in a file to be accessed later.

if File.exists?("info.txt")
  info = IO.binread("info.txt").to_s.split(" ")
  puts "Welcome back #{info[0]}!"
  puts "Your name is #{info[0]}, you are #{info[1]} years old, and your username is #{info[2]}"
else
  puts "Hello! Please enter your name: "
  name = gets.chomp
  puts "Please enter your age: "
  age = gets.chomp
  puts "Enter your Reddit username: "
  user = gets.chomp
  puts "Your name is #{name}, you are #{age} years old, and your username is #{user}"
  IO.binwrite("info.txt", "#{name} #{age} #{user}")
end