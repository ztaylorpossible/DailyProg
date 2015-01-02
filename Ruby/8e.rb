# Daily Programmer Easy Challenge #8 June 18, 2013
# Summary:
# Write a program that will print the song "99 bottles of beer on the wall".
# For extra credit, do not allow the program to print each loop on a new line.

beer = 99
while beer >= 1
  print "#{beer} bottles of beer on the wall, #{beer} bottles of beer! "
  beer -= 1
  print "Take one down, pass it around, #{beer} bottles of beer on the wall! "
end