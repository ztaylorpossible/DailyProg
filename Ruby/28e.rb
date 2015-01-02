# Daily Programmer Easy Challenge #28 July 6, 2013
# Summary:
# The array duplicates problem is when one integer is in an array for more
# than once. If you are given an array with integers between 1 and 1,000,000
# or in some other interval and one integer is in the array twice, how can you
# determine which one?
# Your task is to write code to solve the challenge.
# Note: Try to find the most efficient way to solve this challenge.

# Least efficient solution:

puts "Enter a list of numbers separated with spaces: "
numbers = gets.chomp.split(/ /)
numbers.map! { |x| x.to_i }

for i in 0...numbers.length
  for j in (i+1)..numbers.length  	
  	puts "#{numbers[i]} is a duplicate" if numbers[i] == numbers[j]
  end
end