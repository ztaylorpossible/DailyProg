# Daily Programmer Easy Challenge #10 June 23, 2013
# Summary:
# The exercise today asks you to validate a telephone number, as if written on an
# input form. Telephone numbers can be written as ten digits, or with dashes, spaces,
# or dots between the three segments, or with the area code parenthesized; both the
# area code and any white space between segments are optional.
# Thus, all of the following are valid telephone numebrs: 1234567890, 123-456-7890,
# 123.456.7890, (123)456-7890, (123) 456-7890 (note the white space following the
# area code), and 456-7890.
# The following are not valid telephone numbers: 123-45-6789, 123:4567890, and
# 123/456-7890.
# source: programmingpraxis.com

$validate_short_number = Regexp.new('\d{3}[\.\-\040]?\d{4}')
$validate_long_number = Regexp.new('[(\d{3}[\.\-\040]?)(\(\d{3}\))]\d{3}[\.\-\040]?\d{4}')

def validate_number(input)
  if input.length <= 8
    return input =~ $validate_short_number
  else
  	return input =~ $validate_long_number
  end
end

puts "Please enter a phone number: "
input = gets.chomp.to_s
result = validate_number(input)

unless result == nil
  puts "Valid number!"
else
  puts "Invalid number!"
end