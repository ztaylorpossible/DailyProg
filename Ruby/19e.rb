# Daily Programmer Easy Challenge #19 June 29, 2013
# Summary:
# Challenge #19 will use The Adventures of Sherlock Holmes from Project Gutenberg.
# URL: www.gutenberg.org/cache/epub/1661/pg1661.txt
# Write a program that counts the number of alphanumeric characters there are in
# The Adventures of Sherlock Holmes. Exclude the Project Gutenberg header and
# footer, book title, story titles, and chapters. Post your code and the
# alphanumberic character count.

ignore_strings = ["ADVENTURE", "I.", "II.", "III."]
char_count = 0
passed_intro = false
file = File.open("easy19/pg1661.txt")
lines = file.each_line
lines.each do |line|
  if not passed_intro
  	if line =~ /ADVENTURE I\./
  	  passed_intro = true
  	end
  elsif line =~ /End of the Project/
    break
  elsif !(line =~ /ADVENTURE|\AI\.|\AII\.|\AIII\./)
    line.each_char do |x|
      if x =~ /\w/
        char_count += 1
      end
    end
  end
end
puts "#{char_count} characters"