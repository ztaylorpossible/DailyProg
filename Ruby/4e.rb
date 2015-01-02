# Daily Programmer Easy Challenge #4 June 16, 2013
# Summary:
# Your challenge for today is to create a random password generator!
# For extra credit, allow the user to specify the amount of passwords to generate
# For even more extra credit, allow the user to specify the length of the strings
# he wants to generate!

char_collection = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
LENGTH = 62
prng = Random.new

puts "Please enter number of passwords to generate: "
num_passwords = gets.chomp.to_i
puts "Please enter length of passwords: "
length_passwords = gets.chomp.to_i
num_passwords.times do
  password = ""
  length_passwords.times do
  	password << char_collection[prng.rand(LENGTH)]
  end
  puts password
end