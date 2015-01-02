# Daily Programmer Easy Challenge #16 June 28, 2013
# Summary:
# Write a function that takes two strings and removes from the first string any
# character that appears in the second string. For instance, if the first string
# is "Daily Programmer" and the second string is "aeiou " the result is "DlyPrgrmmr".
# note: The second string has [space] so the space between "Daily Programmer"
# is removed.

puts "Please enter some text: "
text = gets.chomp
puts "Enter characters to remove from that text: "
remove_text = gets.chomp
text.delete!(remove_text)
puts text