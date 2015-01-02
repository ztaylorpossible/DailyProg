=begin
Daily Programmer Easy Challenge #48 August 2, 2013
Summary:
Take an array of integers and partition it so that all the even integers in the
array precede all the odd integers in the array. Your solution must take linear
time in the size of the array and operate in-place with only a constant amount
of extra space. Your task is to write the indicated function.
=end

def swap(nums, a, b)
  temp = nums[a]
  nums[a] = nums[b]
  nums[b] = temp
end

puts "Please enter a set of numbers seperated by spaces"
numbers = gets.chomp.split(' ')
numbers.map! { |x| x.to_i }

front = 0 # first index
back = numbers.length - 1 # last index
while front < back
  if numbers[front].even?
  	front += 1
  else
  	swap(numbers, front, back)
  	back -= 1
  end
end

puts numbers.to_s