# Daily Programmer Easy Challenge #31 July 9, 2013
# Summary:
# Write a function that takes two base-26 numbers in which digits are represented
# by letters with A=0, B=1, ... Z=25 and returns their product using the same
# notation. As an example, CSGHJ X CBA = FNEUZJA.
# Your task is to write the base-26 multiplication function.
# Try to be very efficient in your code!

def mult_b26(alph1, alph2)
  num1 = 0
  num2 = 0
  count = 1
  result = ""
  alph_to_num = {'A' => 0,  'B' => 1,  'C' => 2,  'D' => 3,  'E' => 4,  'F' => 5,
                 'G' => 6,  'H' => 7,  'I' => 8,  'J' => 9,  'K' => 10, 'L' => 11,
                 'M' => 12, 'N' => 13, 'O' => 14, 'P' => 15, 'Q' => 16, 'R' => 17,
                 'S' => 18, 'T' => 19, 'U' => 20, 'V' => 21, 'W' => 22, 'X' => 23,
                 'Y' => 24, 'Z' => 25}
  num_to_alph = alph_to_num.invert
  alph1.upcase!
  alph2.upcase!
  (alph1.length - 1).downto(0) do |x|
  	num1 += alph_to_num[alph1[x]] * (26**(alph1.length - x - 1))
  end
  (alph2.length - 1).downto(0) do |x|
  	num2 += alph_to_num[alph2[x]] * (26**(alph2.length - x - 1))
  end
  product = num1 * num2
  while product > 0
  	digit = product % 26
  	count += 1
  	product = (product - digit) / 26
    result.prepend(num_to_alph[digit])
  end
  return result
end

puts "Enter in two numbers in base 26 using A-Z where A=0..Z=25: "
nums = gets.chomp.split(/ /)
puts "Multiplied number is #{mult_b26(nums[0], nums[1])}"