# Daily Programmer Easy Challenge #21 July 6, 2013
# Summary:
# Input: A number
# Output: The next higher number that uses the same set of digits

puts "Enter a number: "
number = gets.chomp               # number is type String
original_number = number.to_i     # for comparison later
number = number.split(//)         # separate to char
number = number.permutation.to_a  # all combinations of number
number.uniq!                      # keep unique ones
number.map! { |x| x.join.to_i }   # put back together and turn to int for comparison
number.sort!                      # insure they're in order

if number.last != original_number
  puts "#{number[number.index(original_number) + 1]} is the next number!"
else
  puts "#{number.last} is the greatest using those digits!"
end