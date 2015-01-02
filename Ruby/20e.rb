# Daily Programmer Easy Challenge #20 July 2, 2013
# Summary:
# Create a program that will find all prime numbers below 2000

numbers = Array.new(2001, true)
numbers[0] = false

for i in 2..2000
  j = i**2
  if numbers[i] == true
  	numbers[j] = false
    while j <= 2000
      j += i
      numbers[j] = false
    end
  end
end

for i in 1..2000
  if numbers[i] == true
    print "#{i} "
  end
end