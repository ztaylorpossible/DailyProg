# Daily Programmer Easy Challenge #2 June 14, 2013
# Summary:
# Hello, coders! An important part of programming is being able to apple your programs,
# so your challenge for today is to create a calculator application that has use in your
# life. It might be an interest calculator, or it might be something that you can use in
# the classroom. For example, if you were in physics class, you might want to make a
# F = M * A calc.
# I'm choosing to make a scale calculator, given any starting pitch.

$scale = { C: 0, D: 2, E: 4, F: 5, G: 7, A: 9, B: 11 }
$major_scale = [2, 2, 1, 2, 2, 2]
$minor_scale = [2, 1, 2, 2, 1, 2]
$dorian_scale = [2, 1, 2, 2, 2, 1]
$phrygian_scale = [1, 2, 2, 2, 1, 2]
$lydian_scale = [2, 2, 2, 1, 2, 2]
$mixolydian_scale = [2, 2, 1, 2, 2, 1]
$locrian_scale = [1, 2, 2, 1, 2, 2]
$has_sharp = false
$has_flat = false

def build_scale(base, mode)   # returns numerical version of a scale
  counter = 0
  result = Array.new
  result.push($scale[base.to_sym])
  case mode
  when '1'
    6.times { result.push(result.last + $major_scale[counter]); counter +=1}
  when '2'
    6.times { result.push(result.last + $minor_scale[counter]); counter +=1}
  when '3'
    6.times { result.push(result.last + $dorian_scale[counter]); counter +=1}
  when '4'
    6.times { result.push(result.last + $phrygian_scale[counter]); counter +=1}
  when '5'
    6.times { result.push(result.last + $lydian_scale[counter]); counter +=1}
  when '6'
    6.times { result.push(result.last + $mixolydian_scale[counter]); counter +=1}
  when '7'
    6.times { result.push(result.last + $locrian_scale[counter]); counter +=1}
  else
    6.times { result.push(result.last + $major_scale[counter]); counter +=1}
  end
  return result
end

def add_accidentals(mod_scale)   # converts numerical scale to note names, with accidentals
  index = 0
  $scale.each do |key, value|
  	if mod_scale[index] > value
  	  mod_scale[index] = key.to_s << "#"
  	elsif mod_scale[index] < value
  	  mod_scale[index] = key.to_s << "b"
  	else
  	  mod_scale[index] = key.to_s
  	end
  	index += 1
  end
  return mod_scale
end

def scale_sort(mod_scale, tonic)  # rearranges scale to have the tonic as first note again
  index = mod_scale.index(tonic)
  length = mod_scale.length - index
  result = mod_scale.slice!(index, length)
  mod_scale.each do |x|
  	result.push(x)
  end
  return result
end

def add_sharps(mod_scale)
  mod_scale.each do |x|
  	if x[x.length-1] == 'b'
  	  x.slice!(x.length-1)
  	else
  	  x << "#"
  	end
  end
end

def add_flats(mod_scale)
  mod_scale.each do |x|
  	if x[x.length-1] == '#'
  	  x.slice!(x.length-1)
  	else
  	  x << "b"
  	end
  end
end

puts "What kind of scale would you like to create?"
puts "1) Major Scale"
puts "2) Minor Scale"
puts "3) Dorian Scale"
puts "4) Phrygian Scale"
puts "5) Lydian Scale"
puts "6) Mixolydian Scale"
puts "7) Locrian Scale"
scale_choice = gets.chomp

puts "Please enter a starting note, with a maximum of one accidental: "
note = gets.chomp

if note.include?('#') # strips accidental to be calculated later
  note.slice!(1)
  $has_sharp = true
elsif note.include?('b') && note.length >= 2
  note.slice!(1)
  $has_flat = true
end
note.upcase!

user_scale = build_scale(note, scale_choice)
user_scale.map! {|x| x % 12}    # transposes notes to the smallest octave
user_scale.sort!                # prepares to be compared to the main hash to add accidentals
user_scale = add_accidentals(user_scale)
user_scale = scale_sort(user_scale, note)

if $has_sharp        # adds back in original sharps and flats
  user_scale = add_sharps(user_scale)
elsif $has_flat
  user_scale = add_flats(user_scale)
end

puts user_scale.to_s