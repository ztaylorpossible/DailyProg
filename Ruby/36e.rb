# Daily Programmer Easy Challenge #36 July 11, 2013
# Summary:
# 1000 Lockers Problem
# In an imaginary high school there exists 1000 lockers labelled 1, 2, ..., 1000.
# All of them are closed. 1000 students are to "toggle" a locker's state.
# The first student toggles all of them. The second one toggles every other one.
# The third one toggles the multiples of 3 and so on until all students have finished.
# To toggle means to close the locker if it is open, and to open it if it's closed.
# How many and which lockers are open in the end?

lockers = Array.new(1000, false)
for i in 1..1000
  count = i
  while count <= 1000
  	if lockers[count - 1]
  	  lockers[count - 1] = false
  	else
  	  lockers[count - 1] = true
  	end
  	count += i
  end
end
count = 0
for i in 0...1000
  if lockers[i]
    puts "Locker #{i + 1} is open"
    count += 1
  end
end
puts "#{count} lockers were open"