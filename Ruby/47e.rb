=begin
Daily Programmer Easy Challenge #47 August 2, 2013
Summary:
Your task today is to implement one of the oldest ciphers known, the so-called Caesar cipher
(or Caesar shift, as it is sometimes called). It works like this: for every letter you want
to encrypt, you shift it some number of places down the alphabet to get the letter in the cipher.
So, for instance, in a Caesar cipher with a shift of 3, "A" becomes "D", "B" becomes "E", "C"
becomes "F", and so on. At the end of the alphabet it wraps around, so "W" becomes "Z", "X"
becomes "A", "Y" becomes "B" and "Z" becomes "C". If you encrypt "Hello" with a shift of 3, you
get "Khoor". One interesting thing about this cipher is that you can use the same algorithm to
decode a cipher as you can to encode it: if you wish to decrypt some text that has been
Caesar-shifted 6 places, you simply shift it another 20 places to get back the original text.
For example, if you encrypt "Daily programmer" with a shift of 6 you get "Jgore vxumxgsskx", and
if you encrypt "Jgore vxumxgsskx" with a shift of 20 you get "Daily programmer".
Implement the cipher and encrypt a bit of text of your choice!
=end

# shift to decode the file is 19

file = IO.binread("easy47/caesar.txt")
alpha = ('a'..'z').to_a
text = String.new

puts "Enter shift to encrypt: "
shift = gets.chomp.to_i

file.each_char do |x|
  if alpha.include?(x)
  	index = alpha.index(x)
  	index = (index + shift) % 26
  	text << alpha[index]
  elsif alpha.include?(x.downcase)
  	index = alpha.index(x.downcase)
  	index = (index + shift) % 26
  	text << alpha[index].upcase
  else
  	text << x
  end
end

puts text