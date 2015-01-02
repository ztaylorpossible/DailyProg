# Daily Programmer Easy Challenge #27 July 6, 2013
# Summary:
# Write a program that accepts a year as input and outputs the century the year
# belongs in (e.g. 18th century's year ranges are 1701 to 1800) and whether or
# not the year is a leap year.
# Sample run:
# Enter year: 1996
# Century: 20
# Leap Year: Yes
# Enter Year: 1900
# Century: 19
# Leap Year: No

puts "Enter year: "
year = gets.chomp.to_i
puts "Century: #{((year - 1) / 100) + 1}"
if year % 400 == 0
  puts "Leap Year: Yes"
elsif year % 100 == 0
  puts "Leap Year: No"
elsif year % 4 == 0
  puts "Leap Year: Yes"
else
  puts "Leap Year: No"
end