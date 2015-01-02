=begin
Daily Programmer Easy Challenge #44 July 26, 2013
Summary:
Write a program that divides up some input text into sentences and then determines
which sentence in the input has the most words. Print out the sentence with the most
words and the number of words that are in it. Optionally, also print out all words in
that sentence that are longer than 4 characters. Sentences can end in periods, exclamation
points and question marks, but not colons or semi-colons. If you need something to input,
try Shylock's famous speech from Shakespeare's The Merchant of Venice [easy44/Venice.txt]
=end

most_words = 0 # actual number words in sentence with most words
current_words = 0 # number of words in current sentence
words_over_four = [] # array for storing words over four letters
longest = [] # array for storing the longest sentence
current_sentence = [] # array for storing words in current sentence

text = IO.binread("easy44/Venice.txt")
text = text.split(" ")
text.each do |word|
  current_sentence << word
  current_words += 1
  if word =~ /[\.\!\?]/
  	if current_words > most_words
  	  most_words = current_words
  	  longest.clear
      longest.push(current_sentence).flatten!
      words_over_four.clear
      longest.each do |x|
      	words_over_four.push(x) if x.length >= 4
      end
    end
    current_sentence.clear
    current_words = 0
  end
end
longest = longest.join(" ")
words_over_four = words_over_four.join(" ")
puts longest
puts most_words
puts words_over_four