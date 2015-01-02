# Daily Programmer Easy Challenge #32 July 10, 2013
# Summary:
# Lets simulate a roulette wheel!
# A program that takes as input your bet, and gives as output how much you
# won, with the appropriate probability
# Write a program that will take a player's bet and output the resulting spin
# and payout. Try using an American roulette wheel (which has the 00 slot) to
# add a slight twist. Try to incorporate as many complex bets as you can too.

invalid = false
bet = Array.new
puts "How much would you like to bet?"
wager = gets.chomp.to_i
puts "What kind of bet would you like to make?"
puts "1) Bet on a single number"
puts "2) Street bet"
puts "3) Six line"
puts "4) Top line"
puts "5) Column"
puts "6) Dozen"
puts "7) Odd"
puts "8) Even"
puts "9) Red"
puts "10) Black"
puts "11) 1 to 18"
puts "12) 19 to 36"
menu = gets.chomp
case menu
when '1'
  puts "What number would you like to bet on (00, or 0-36)?"
  bet[0] = gets.chomp
  if bet[0] == "00"
    bet[0] = 37
  else
    bet[0].to_i
  end
  wager *= 35
when '2'
  puts "Row starting on what number (1, 4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34)?"
  input = gets.chomp.to_i
  3.times do
  	bet.push(input)
  	input += 1
  end
  wager *= 11
when '3'
  puts "Rows starting on what number (1, 4, 7, 10, 13, 16, 19, 22, 25, 28, 31)?"
  input = gets.chomp.to_i
  6.times do
  	bet.push(input)
  	input += 1
  end
  wager *= 5
when '4'
  for i in 0..3 do
  	bet.push(i)
  end
  bet.push(37)
  wager *= 6
when '5'
  puts "Which column (1, 2, 3)?"
  input = gets.chomp.to_i
  while input <= 36
  	bet.push(input)
  	input += 3
  end
  wager *= 2
when '6'
  puts "Dozen starting on which number (1, 13, 25)?"
  input = gets.chomp.to_i
  12.times do
  	bet.push(input)
  	input += 1
  end
  wager *= 2
when '7'
  i = 1
  while i <= 36
  	bet.push(i)
  	i += 2
  end
when '8'
  i = 2
  while i <= 36
  	bet.push(i)
  	i += 2
  end
when '9'
  bet = [1, 3, 5, 7, 9, 12, 14, 16, 18, 19, 21, 23, 25, 27, 30, 32, 34, 36]
when '10'
  bet = [2, 4, 6, 8, 10, 11, 13, 15, 17, 20, 22, 24, 26, 28, 29, 31, 33, 35]
when '11'
  for i in 1..18 do
  	bet.push(i)
  end
when '12'
  for i in 19..36 do
  	bet.push(i)
  end
else
  puts "Invalid menu option"
  invalid = true
end

unless invalid
  num = rand(38)
  if bet.include?(num)
    puts "You won #{wager}!"
  else
    puts "You lost!"
  end
  if num == 37
    num = "00"
  end
  puts "The spin was #{num}"
end