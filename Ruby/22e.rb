# Daily Programmer Easy Challenge #22 July 6, 2013
# Summary:
# Write a program that will compare two lists, and append any elements in the second list
# that doesn't exist in the first.
# Input: ["a", "b", "c", 1, 4], ["a", "x", 34, "4"]
# Output: ["a", "b", "c", 1, 4, "x", 34, "4"]

array1 = ["a", "b", "c", 1, 4]
array2 = ["a", "x", 34, "4"]

array2.each { |x|
  if not array1.include?(x)
  	array1.push(x)
  end
}

puts array1.to_s