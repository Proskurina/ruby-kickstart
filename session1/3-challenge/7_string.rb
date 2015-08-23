# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

#Here the original solution also was very surprising!!! Love it!

def pirates_say_arrrrrrrrr(string)
	result = ''
	string.length.times do |index|
		if string[index] == 'r' || string[index] == 'R'
			result << string[index+1].to_s
		end
	end
	return result
end

puts pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
puts pirates_say_arrrrrrrrr("Katy Perry is on the radio!")
puts pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")

