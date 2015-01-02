# Daily Programmer Easy Challenge #5 June 16, 2013
# Summary:
# Your challenge for today is to create a program which is password protected, and
# won't open unless the correct user and password is given.
# For extra credit, have the user and password in a seperate .txt file.
# For even more extra credit, break into your own program :)

puts "Please enter username:"
user = gets.chomp
puts "Please enter password:"
pass = gets.chomp

auth_file = File.open("easy5/auth.txt")
auth = auth_file.readlines
auth_file.close
auth[0].chomp!            # Remove \n char

if user == auth[0] && pass == auth[1]
  puts "Program execution"
  puts "..."
  puts "..."
else
  puts "Unauthorized username and/or password"
end