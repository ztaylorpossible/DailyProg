# Daily Programmer Easy Challenge #34 July 10, 2013
# Summary:
# A very basic challenge:
# In this challenge, the input is 3 numbers as arguments
# Output: The sum of the squares of the two larger numbers.

puts "Enter three numbers separated by spaces: "
numbers = gets.chomp.split(" ")
numbers.map! { |x| x.to_i }
numbers.sort!
puts numbers[1]**2 + numbers[2]**2