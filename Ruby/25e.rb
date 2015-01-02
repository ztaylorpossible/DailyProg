# Daily Programmer Easy Challenge #25 July 6, 2013
# Summary:
# In an election, the person with the majority of the votes is the winner.
# Sometimes due to similar number of votes, there are no winners.
# Your challenge is to write a program that determines the winner of a vote,
# or shows that there are no winners due to a lack of majority

puts "Enter the first vote total: "
total1 = gets.chomp.to_i
puts "Enter the second vote total: "
total2 = gets.chomp.to_i

if total1 > total2
  puts "The first candidate wins"
elsif total2 > total1
  puts "The second candidate wins"
else
  puts "It is a tie"
end