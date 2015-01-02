# Daily Programmer Easy Challenge #6 June 17, 2013
# Summary:
# Your challenge for today is to create a program that can calculate pi accurately to
# at least 30 decimal places.
# Try not to cheat :)
require 'bigdecimal'

result = BigDecimal.new("0.")
num1 = BigDecimal.new("0")
num2 = BigDecimal.new("0")
num3 = BigDecimal.new("0")
num4 = BigDecimal.new("0")

for x in (0..50) do
  num1 = 4 / (8.0 * x + 1)
  num2 = 2 / (8.0 * x + 4)
  num3 = 1 / (8.0 * x + 5)
  num4 = 1 / (8.0 * x + 6)
  result += (num1 - num2 - num3 - num4) * (1 / (16.0**x))
  puts sprintf("%30.30f", result)
end

# formats correctly, but still can't figure out how to get past 15 digits accurately