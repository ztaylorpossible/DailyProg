# Daily Programmer Easy Challenge #13 June 25, 2013
# Summary:
# Find the number of the year for the given date. For example, January 1st would be 1,
# and December 31st is 365.
# For extra credit, allow it to calculate leap years, as well.

require 'date'

puts "Enter a date in the format yyyy-mm-dd: "
date = gets.chomp
unless (date =~ /\d{4}\-\d{2}\-\d{2}/) == nil
  puts "The day of the year is #{Date.parse(date).yday}"
else
  puts "#{date} is in the wrong format"
end