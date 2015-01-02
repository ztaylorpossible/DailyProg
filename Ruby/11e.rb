# Daily Programmer Easy Challenge #11 June 25, 2013
# Summary:
# The program should take three arguments. The first will be a day, the second will be month,
# the thrid will be year. Then, your program should compute the day of the week that date will
# fall on.

require 'date'

puts "Please enter a date in the following format: yyyy-mm-dd"
date = gets.chomp
unless (date =~ /\d{4}\-\d{2}\-\d{2}/) == nil
  date = Date.parse(date)
  puts "The day is #{Date::DAYNAMES[date.wday]}"
else
  puts "#{date} is in the wrong format"
end