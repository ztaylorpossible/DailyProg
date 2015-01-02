=begin
Daily Programmer Easy Challenge #46 August 2, 2013
Summary:
The population count of a bitstring is the number of set bits (1-bits) in the string.
For instance, the population count of the number 23, which is represented in binary as 10111
is 4. Your task is to write a function that determines the population count of a number
representing a bitstring.
=end

count = 0

puts "Enter a number: "
number = gets.chomp.to_i
number = number.to_s(2)
number.each_char do |x|
  count += 1 if x == '1'
end
puts count