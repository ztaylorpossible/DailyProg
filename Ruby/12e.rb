# Daily Programmer Easy Challenge #12 June 25, 2013
# Summary:
# Write a small program that can take a string:
# "hi!"
# and print all the possible permutations of the string:
# "hi!"
# "ih!"
# "!hi"
# "h!i"
# "i!h"
# etc...
# Thanks to hewts for this challenge!

puts "Enter some text:"
text = gets.chomp.split(//)
text = text.permutation.to_a
text.each do |x|
  puts x.join
end