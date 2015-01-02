# Daily Programmer Easy Challenge #3 June 15, 2013
# Write a program that can encrypt texts with an alphabetical casesar cipher.
# This cipher can ignore numbers, symbols, and whitespace.
# For extra credit, add a "decrypt" function to your program!

$up_alpha = ('A'..'Z').to_a
$down_alpha = ('a'..'z').to_a

def caesar(file, offset)
  index = 0

  file.each_char do |x|
    if $down_alpha.include?(x)
   	  new_value = ($down_alpha.index(x) + offset) % 26
      file[index] = $down_alpha[new_value]
    elsif $up_alpha.include?(x)
  	  new_value = ($up_alpha.index(x) + offset) % 26
  	  file[index] = $up_alpha[new_value]
    end
    index += 1
  end
end

puts "Please enter the name of the file to encrypt/decrypt: "
file_name = gets.chomp
puts "Enter the name of the output file: "
output_file = gets.chomp
puts "Please enter the offset: "
key = gets.chomp.to_i
file = IO.binread(file_name)
caesar(file, key)
IO.binwrite(output_file, file)