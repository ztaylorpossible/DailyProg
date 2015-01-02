# Daily Programmer Easy Challenge #28 July 8, 2013
# Summary:
# The array duplicates problem is when one integer is in an array for more
# than once. If you are given an array with integers between 1 and 1,000,000
# or in some other interval and one integer is in the array twice, how can you
# determine which one?
# Your task is to write code to solve the challenge.
# Note: Try to find the most efficient way to solve this challenge.

# Most efficient solution

num_hash = Hash.new
puts "Enter a list of numbers separated with spaces: "
numbers = gets.chomp.split(/ /)
numbers.map! { |x| x.to_i }
numbers.each.with_index do |num, index|
  if num_hash.has_key?(num)
  	puts "#{num} is a duplicate at index #{index}"
  else
  	num_hash[num] = index
  end
end