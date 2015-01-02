=begin
Daily Programmer Easy Challenge #49 August 3, 2013
Summary:
The Monty Hall Problem is a probability brain teaser that has a rather unintuitive solution.
The gist of it, taken from Wikipedia:

Suppose you're on a game show, and you're given the choice of three doors: Behind one door
is a car; behind the others, goats. You pick a door, say No. 1 [but the door is not opened],
and the host, who knows what's behind the doors, opens another door, say No. 3, which has a
goat. He then says to you, "Do you want to pick door No. 2?" Is it to your advantage to
switch your choice? (clarification: the host will always reveal a goat)

Your task is to write a function that will compare the strategies of switching and not
switching over many random position iterations. Your program should output the proportion
of successful choices by each strategy. Assume that if both unpicked doors contain goats
the host will open one of those doors at random with equal probability.

If you want to, you can for simplicity's sake assume that the player picks the first door
every time. The only aspect of this scenario that needs to vary is what is behind each door.
=end

def make_doors
  doors = Array.new
  car = rand(3)
  3.times do |x|
  	if x == car
  	  doors.push("car")
  	else
  	  doors.push("goats")
  	end
  end
  return doors
end

def pick_first_door
  rand(3)
end

def same_door(first_pick, doors)
  if doors[first_pick] == "car"
  	return "car"
  else
  	return "goats"
  end
end

def switch_doors(first_pick, doors)
  selected = [false, false, false] # tracking which door to switch to
  selected[first_pick] = true # eliminate door already picked
  if doors[first_pick] == "car"
    goats = Array.new
    selected.each.with_index do |x, index|
      goats.push(index) if !x
    end # goats now contains the indicies of the doors with goats for random selection
    selected[goats[rand(2)]] = true # door revealed
    return doors[selected.index(false)] # return only door not yet picked
  else
    doors.each.with_index do |x, index|
      if x == "goats" && !selected[index]
        selected[index] = true
      end
    end # other door with goat now open
    return doors[selected.index(false)] # return remaining door
  end
end

cars = 0
goats = 0

300.times do
  doors = make_doors
  first_door = pick_first_door
  if same_door(first_door, doors) == "car"
    cars += 1
  else
    goats += 1
  end
end

puts "Staying with the same door 300 times:"
puts "Cars picked: #{cars}"
puts "Goats picked: #{goats}"

cars = 0  # reset for next run
goats = 0

300.times do
  doors = make_doors
  first_door = pick_first_door
  if switch_doors(first_door, doors) == "car"
    cars += 1
  else
    goats += 1
  end
end

puts "Switching doors 300 times:"
puts "Cars picked: #{cars}"
puts "Goats picked: #{goats}"