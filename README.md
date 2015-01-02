DailyP
======

Daily Programmer Exercises

This is a project where I am writing solutions to the problems on the subreddit /r/dailyprogrammer.
I've started going through the easy exercises to help me learn to code in Ruby, and hope to get
through them all eventually. Here is a summary of the projects I've done so far, and I'll try to update
this as often as I can.

I. Easy Problems

1e.rb
Project takes some user info as input, then outputs the information back
using string interpolation.

2e.rb
This challenge asked for me to make a calculator for something I use in real life.
Most people chose physics appications or similar, but I took a different slant on
it, and made a music scale calculator. Input is a starting pitch, and the mode of
scale you want, and output is the scale with correct accidentals.

3e.rb
Input a file to apply a caesar cipher to, and it can output to a different file.
You also get to choose the shift for it.

4e.rb
Generates lists of randomly created passwords using a defined set of characters.

5e.rb
Basic user authentication using a username and password located in a seperate file.

6e.rb
An attempt to calculate pi to 30 digits accurately. The algorithm works, but I haven't
figured out a way to store it to get past 15 digits.

7e.rb
Translates typed Morse code into alphanumeric characters and back again.

8e.rb
Prints song "99 Bottles of Beer on the Wall" using a loop and string interpolation.

9e.rb
Takes a string of letters or numbers and sorts them.

10e.rb
Uses regex to validate phone number formats.

11e.rb
Computes the day of the week based on input of a day, month, and year.

12e.rb
Takes text as input and outputs every character permutation of that text.

13e.rb
Input is a month and day, and output is the day of the year that is.
For example, input would be February 2nd, output would be 33.

14e.rb
Takes a list of numbers and a block size. Reverses the numbers in each
block of the list.

15e.rb
Input is a text file, and the program justifies it to the left or right.

16e.rb
Input is two strings, then the first string has all the characters in the
second string subtracted from it. So, "Daily Programmer" and "aeiou "
becomes "DlyPrgrmmr"

17e.rb
Outputs a triangle where each line is twice as long as the one before
to a user specified height.

18e.rb
Takes phone numbers such as 1-800 numbers that use letters in them, and
reformats them to be just numbers.

19e.rb
Uses The Adventures of Sherlock Holmes from Project Gutenberg, and counts
all of the alphanumeric characters in it, while filtering the titles of
chapters, the headings, and the footer.

20e.rb
Finds all prime numbers below 2000

21e.rb
Input is a number, output is the next higher number using the same digits.

22e.rb
Compares two lists and adds elements to the first from the second that are unique.
Uses include? method to check duplicates

22e_alt.rb
Same exercise but without using include?, and manually comparing elements

23e.rb
Takes a list, and splits it into two halves.

24e.rb - Daily Programmer didn't have an easy challenge 24, so it is missing here.

25e.rb
Compares votes to determine the winner between two candidates.

26e.rb
Takes a string and removes duplicate adjacent characters.

27e.rb
Input a year, and output is the century it is in. It also determines whether
that year is a leap year or not.

28e.rb
General case for searching an array for duplicate elements using nested
for loops, resulting in a O(n^2) efficiency.

28e_alt.rb
First sorts the list, then compares neighboring elements resulting in
a O(nlogn) efficiency.

28e_alt2.rb
Stores elements in a hash table using symbol comparison to determine if there
is a duplicate, resulting in a O(n) efficiency.

29e.rb
Determines if input is a palindrome. Uses Demetri Martin's palindrome poem to
test if it works.

30e.rb
Takes a list of numbers and a target number. Then determines if the sum of any
two of the numbers in the list match the target number, and returns them.

