# Daily Programmer Easy Challenge #14 June 25, 2013
# Summary:
# Input: list of elements and a block size k or some other variable of your choice
# Output: return the list of elements with every block of k elements recersed,
# starting from the beginning of the list.
# For instance, given the list 12, 24, 32, 44, 55, 66 and the block size 2, the
# result is 24, 12, 44, 32, 66, 55

inner_array = []
outer_array = []

puts "Enter in a list of numbers seperated by a space: "
list = gets.chomp
list = list.split(" ")

puts "Enter block size for reversal: "
k = gets.chomp.to_i

for i in 0...list.length
  inner_array.push(list[i])
  if inner_array.length == k || i == (list.length - 1)
  	inner_array.reverse!
  	outer_array.concat(inner_array)
  	inner_array.clear
  end
end

list = outer_array.join(" ")
puts list