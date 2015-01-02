# Daily Programmer Easy Challenge #7 June 17, 2013
# Summary:
# Write a program that can translate Morse code in the format of ...---...
# A space and a slash will be placed between words. ..- / --.-
# For bonus, add the capability of going from a string to Morse code.
# Super-bonus if your program can flash or beep the Morse.
# This is your morse to translate: [moved to morse.txt included in folder]

morse_hash = {".-" => 'a',    "-..." => 'b',  "-.-." => 'c',  "-.." => 'd',
              "." => 'e',     "..-." => 'f',  "--." => 'g',   "...." => 'h',
              ".." => 'i',    ".---" => 'j',  "-.-" => 'k',   ".-.." => 'l',
              "--" => 'm',    "-." => 'n',    "---" => 'o',   ".--." => 'p',
              "--.-" => 'q',  ".-." => 'r',   "..." => 's',   "-" => 't',
              "..-" => 'u',   "...-" => 'v',  ".--" => 'w',   "-..-" => 'x',
              "-.--" => 'y',  "--.." => 'z',  ".----" => '1', "..---" => '2',
              "...--" => '3', "....-" => '4', "....." => '5', "-...." => '6',
              "--..." => '7', "---.." => '8', "----." => '9', "-----" => '0'}

encode_hash = morse_hash.invert

puts "Would you like to translate, or encode to Morse code?"
puts "1) Decode"
puts "2) Write as Morse code"
menu = gets.chomp
puts "Please enter the source file: "
file = gets.chomp
puts "Please enter the output file: "
output_file = gets.chomp
code = IO.binread(file)
text = ""

if menu == '1'
  code = code.split(" ")
  code.each do |x|
    if x != "/"
      text << morse_hash[x]
    else
      text << " "
    end
  end
elsif menu == '2'
  code.each_char do |x|
  	if x != " "
  	  text << encode_hash[x] << " "
  	else
  	  text << "/ "
  	end
  end
end

IO.binwrite(output_file, text)
puts text
