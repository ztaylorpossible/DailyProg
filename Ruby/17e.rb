# Daily Programmer Easy Challenge #17 June 28, 2013
# Summary:
# Write an application which will print a triangle of stars of user-specified
# height, with each line having twice as many stars as the last. Sample output:
# @
# @@
# @@@@
# Hint: In many languages, the "+" sign concatenates strings.
# Bonus features: Print the triangle in reverse, print the triangle right justified

def triangle(reps)
  (0...reps).each do |x|
    puts "*" * (2 ** x)
  end
end

def rjust_triangle(reps)
  (0...reps).each do |x|
    stars = "*" * (2 ** x)
    print stars.rjust(80)
  end
end

def invert_triangle(reps)
  (reps-1).downto(0) do |x|
  	puts "*" * (2 ** x)
  end
end

puts "How many lines for your triangle?"
num = gets.chomp.to_i
puts "What kind of triangle?"
puts "1) Left Justified"
puts "2) Right Justified"
puts "3) Upside-down"
choice = gets.chomp

case choice
  when '1'
  	triangle(num)
  when '2'
  	rjust_triangle(num)
  when '3'
  	invert_triangle(num)
  else
  	puts "Invalid menu option"
end