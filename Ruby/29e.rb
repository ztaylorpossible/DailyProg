# Daily Programmer Easy Challenge #29 July 8, 2013
# Summary:
# A Palindrome is a sequence that is the same in reverse as it is forward.
# I.e. hannah, 12321.
# Your task is to write a function to determine whether a given string is palindromic
# or not. Bonus: Support multiple lines in your function to validate Demetri Martin's
# 224 word palindrome poem.

file = IO.binread("easy29/Martin.txt")
chars = ""
file.each_char { |x| chars << x if x =~ /\w/ }
chars.downcase!
puts chars == chars.reverse ? "Is palindromic" : "Is not palindromic"