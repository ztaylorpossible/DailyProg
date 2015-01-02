=begin
Daily Programmer Easy Challenge #50 August 5, 2013
Summary:
Today's two challenges are from Google Code Jam Qualification Round Africa 2010
Store Credit:
You receive a credit C at a local store and would like to buy two items. You first
walk through the store and create a list L of all available items. From this list
you would like to buy two items that add up to the entire value of the credit. The
solution you provide will consist of the two integers indicating the positions of
the items in your list (smaller number first).
For instance, with C=100 and L={5,75,25} the solution is 2,3; with C=200 and
L={150,24,79,50,88,345,3} the solution is 1,4; and with C=8 and L={2,1,9,4,4,56,90,3}
the solution is 4,5.
=end

# Using examples from the question to test algorithm

c1 = 100
l1 = [5,75,25]
c2 = 200
l2 = [150,24,79,50,88,345,3]
c3 = 8
l3 = [2,1,9,4,4,56,90,3]

# avoiding using combination method on array

def find_items(credit, list)
  sorted = list.sort
  left = 0
  right = sorted.length - 1
  while left < right
  	sum = sorted[left] + sorted[right]
  	if sum == credit && left != right
  	  left_result = list.index(sorted[left]) + 1
  	  right_result = list.index(sorted[right]) + 1
  	  if left_result == right_result # in case of matching numbers, return all matching elements
  	  	result = Array.new
  	  	list.each.with_index do |x, index|
  	  	  result.push(index + 1) if x == sorted[left]
  	  	end
  	  	return result.to_s
  	  end
  	  return [left_result, right_result].sort.to_s
  	elsif sum <= credit
  	  left += 1
  	else # sum >= credit
  	  right -= 1
  	end
  end
  return "No match"
end

puts find_items(c1, l1)
puts find_items(c2, l2)
puts find_items(c3, l3)