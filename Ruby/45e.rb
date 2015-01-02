=begin
Daily Programmer Easy Challenge #45 July 29, 2013
Summary:
Your challenge today is to write a program that can draw a checkered grid
(like a chessboard) to any dimension. Also try to make it scalable.
=end

def print_line(length)  # prints horizontal line of stars
  length.times do
  	print '*'
  end
end

shaded = true # switching squares shading
line = String.new # storing lines to print

puts "Enter the size of the squares you want: "
square = gets.chomp.to_i
puts "Enter width of the board: "
width = gets.chomp.to_i
puts "Enter height of the board: "
height = gets.chomp.to_i

full_width = width * square + (width + 1)
print_line(full_width)
puts "\n"
height.times do  # each iteration builds one row of squares
  square.times do # each iteration builds one line of the square
    line << "*"
    width.times do # building according to number of squares horizontally
      square.times do # one square
        if shaded
       	  line << "#"
        else
      	  line << " "
        end
      end
      line << "*"
      shaded = !shaded  # switch shading for square
    end
    line << "\n"
    shaded = !shaded if width % 2 == 1 # make sure squares are uniform
  end
  puts line
  line.clear
  print_line(full_width)
  puts "\n"
  shaded = !shaded
end