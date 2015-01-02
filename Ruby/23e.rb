# Daily Programmer Easy Challenge #23 July 6, 2013
# Summary:
# Input: A list
# Output: Return the two halves as different lists.
# If the input list has an odd number, the middle item can go to any
# of the list. Your task is to write the function that splits a list
# in two halves.

odd = false
list1 = Array.new
list2 = Array.new

puts "Enter a list of numbers separated with spaces: "
list = gets.chomp.split(" ")
odd = true if list.length % 2 == 1

if odd
  list1 = list.first(list.length / 2 + 1)
  list2 = list.last(list.length / 2)
else
  list1 = list.first(list.length / 2)
  list2 = list.last(list.length / 2)
end

puts list1.inspect
puts list2.inspect