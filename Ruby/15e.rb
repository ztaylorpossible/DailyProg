# Daily Programmer Easy Challenge #15 June 25, 2013
# Summary:
# Write a program to left or right justify a text file

def justify_left(file)
  text = ""
  file.each_line do |line|
  line.lstrip!
  text << line
  end
  return text
end

def justify_right(text)
  result = ""
  text.each_line do |line|
    result << line.rjust(80)
  end
  return result
end

puts "Please enter the name of the file to read: "
file = File.open(gets.chomp)
puts "Would you like it justified left or right? "
justify = gets.chomp
justify.downcase!
text = justify_left(file)
if justify == 'right'
  text = justify_right(text)
end

IO.binwrite(file, text)