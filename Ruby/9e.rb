# Daily Programmer Easy Challenge #9 June 23, 2013
# Summary:
# Write a program that will allow the user to input digits, and arrange them in
# numerical order. For extra credit, have it also arrange strings in alphabetical
# order.

output = Array.new
puts "Please enter a series of letters or digits"
input = gets.chomp.to_s.each_char { |x|
  output.push(x)
}
output.sort!
output = output.join
puts output