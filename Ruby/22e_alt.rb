# Daily Programmer Easy Challenge #22 July 6, 2013
# Summary:
# Write a program that will compare two lists, and append any elements in the second list
# that doesn't exist in the first.
# Input: ["a", "b", "c", 1, 4], ["a", "x", 34, "4"]
# Output: ["a", "b", "c", 1, 4, "x", 34, "4"]
# Alternate solution without using include? method
array1 = ["a", "b", "c", 1, 4]
array2 = ["a", "x", 34, "4"]

array2.each { |x|
  counter = 0
  array1.each { |y|
  	if y == x
  	  counter = 0
  	  break
  	elsif counter == (array1.length - 1)
  	  array1.push(x)
  	  counter = 0
  	end
  	counter += 1
  }
}

puts array1.to_s