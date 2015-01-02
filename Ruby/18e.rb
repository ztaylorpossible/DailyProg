# Daily Programmer Easy Challenge #18 June 28, 2013
# Summary:
# Often times in commercials, phone numbers contain letters so that they're easy
# to remember (e.g. 1-800-VERIZON). Write a program that will convert a phone number
# that contains letters into a phone number with only number and the appropriate
# dash.
# Example Execution: Input: 1-800-COMCAST Output: 1-800-266-2278

alpha = {A: 2, B: 2, C: 2, D: 3, E: 3, F: 3,
         G: 4, H: 4, I: 4, J: 5, K: 5, L: 5,
         M: 6, N: 6, O: 6, P: 7, Q: 7, R: 7,
         S: 7, T: 8, U: 8, V: 8, W: 9, X: 9,
         Y: 9, Z: 9}

puts "Please enter a phone number: "
number = gets.chomp
number.upcase!

number.each_char.with_index do |x, y|
  if alpha.has_key?(x.to_sym)
  	number[y] = alpha[x.to_sym].to_s
  end
end

number.each_char.with_index do |x, y|
  if (x =~ /\W/) != nil
  	number.slice!(/\W/)
  end
end

case number.length
  when 7
  	number.insert(3, "-")
  when 10
  	number.insert(3, "-")
  	number.insert(7, "-")
  when 11
  	number.insert(1, "-")
  	number.insert(5, "-")
  	number.insert(9, "-")
  else
  	puts "Invalid length"
end

puts number