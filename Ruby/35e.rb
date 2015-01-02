# Daily Programmer Easy Challenge #35 July 10, 2013
# Summary:
# Write a program that will take a number and print a right triangle
# attempting to use all numbers from 1 to that number.
# Sample Run:
# Enter number: 12
# Output:
# 7 8 9 10
# 4 5 6
# 2 3
# 1

num = 1
line = 1
output = ""
temp = "\n"
puts "Please enter a number: "
input = gets.chomp.to_i
while num <= input
  if num + line - 1 <= input
  	for i in 1..line do
  	  temp << "#{num} "
  	  num += 1
  	end
  	output.prepend(temp)
  	temp = "\n"
  	line += 1
  else
  	break
  end
end
puts output