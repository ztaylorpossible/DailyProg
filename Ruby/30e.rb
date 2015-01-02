# Daily Programmer Easy Challenge #30 July 8, 2013
# Summary:
# Write a program that takes a list of integers and a target number and
# determines if any two integers in the list sum to the target number. If
# so, return the two numbers. If not, return an indication that no such
# integers exist.

puts "Enter a list of numbers separated by spaces: "
list = gets.chomp.split(/ /)
list.map! { |x| x.to_i }
list.sort!
min_index = 0
max_index = list.length - 1
found = false

puts "Enter sum to search for: "
sum = gets.chomp.to_i
while not found
  test_sum = list[min_index] + list[max_index]
  if min_index == max_index
  	puts "Sum not found"
  	break
  elsif test_sum == sum
  	puts "#{list[min_index]} + #{list[max_index]} at indices #{min_index} and #{max_index}"
    found = true
  elsif test_sum > sum
  	max_index -= 1
  else
    min_index += 1 
  end
end
