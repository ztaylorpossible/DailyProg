# Daily Programmer Easy Challenge #39 July 17, 2013
# Summary:
# You are to write a function that displays the numbers from 1 to an input parameter
# n, one per line, except that if the current number is divisible by 3 the function
# should write "Fizz" instead of the number, if the current number is divisible by 5
# the function should write "Buzz" instead of the number, and if the current number is
# divisible by both 3 and 5 the function should write "FizzBuzz" instead of the number.
# For instance, if n is 20, the program should write 1, 2, Fizz, 4, Buzz, Fizz, 7, 8,
# Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz, 16, 17, Fizz, 19, and Buzz on twenty
# successive lines.

puts "Enter a number 1 or greater: "
n = gets.chomp.to_i
for i in 1..n
  if i % 3 == 0 && i % 5 == 0
  	puts "FizzBuzz"
  elsif i % 3 == 0
  	puts "Fizz"
  elsif i % 5 == 0
  	puts "Buzz"
  else
  	puts i
  end
end