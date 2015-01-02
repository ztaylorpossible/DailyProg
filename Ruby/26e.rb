# Daily Programmer Easy Challenge #26 July 6, 2013
# Summary:
# You have a string "ddaaiillyypprrooggrraammeerr". We want to remove all the
# consecutive duplicates and put them in a separate string, which yields two
# separate instances of the string "dailyprogramer".
# Use this list for testing:
# Input: "balloons"
# Expected output: "balons" "lo"
# Input: "ddaaiillyypprrooggrraammeerr"
# Expected output: "dailyprogramer" "dailyprogramer"
# Input: "aabbccddeded"
# Expected output: "abcdeded" "abcd"
# Input: "flabby aapples"
# Expected output: "flaby aples" "bap"

output1 = ""
output2 = ""

puts "Enter string: "
input = gets.chomp
enum = input.each_char
enum.each_with_index do |x, index|
  if index == 0 || input[index] != input[index-1]
  	output1 << x
  else
  	output2 << x
  end
end

puts output1
puts output2