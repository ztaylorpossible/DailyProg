=begin
Daily Programmer Easy Challenge #42 July 23, 2013
Summary:
Write a program that prints out the lyrics for "Ninety-nine bottles of beer", "Old McDonald had 
a farm" or "12 days of Christmas". If you choose "Ninety-nine bottles of beer", you need to spell
out the number, not just write the digits down. It's "Ninety-nine bottles of beer on the wall",
not "99 bottles of beer"! For Old McDonald, you need to include at least 6 animals: a cow,
a chicken, a turkey, a kangaroo, a T-Rex and an animal of your choosing (Old McDonald has a weird
farm). The cow goes "moo", the chicken goes "cluck", the turkey goes "gobble", the kangaroo goes
"g'day mate" and the T-Rex goes "GAAAAARGH". You can have more animals if you like.
Make your code shorter than the song it prints out!
=end

class Animal
  def initialize(name, sound)
  	@name = name
  	@sound = sound
  end
  attr_reader :name
  attr_reader :sound
end

animals = [Animal.new("cow", "moo"), Animal.new("chicken", "cluck"), Animal.new("turkey", "gobble"),
           Animal.new("kangaroo", "g'day mate"), Animal.new("T-Rex", "GAAAAARGH"),
           Animal.new("pig", "oink")]

animals.each do |animal|
  puts "Old MacDonald had a farm. E I E I O!"
  puts "And on that farm he had a #{animal.name}. E I E I O!"
  puts "With a #{animal.sound}, #{animal.sound} here"
  puts "And a #{animal.sound}, #{animal.sound} there!"
  puts "Here a #{animal.sound}, there a #{animal.sound}"
  puts "Everywhere a #{animal.sound}, #{animal.sound}!"
  puts "Old MacDonald had a farm. E I E I O!"
  puts "\n"
end