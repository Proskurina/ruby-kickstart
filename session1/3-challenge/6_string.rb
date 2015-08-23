# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#


#Some ugly code here. When I saw the original solution my jaw dropped)))

def odds_and_evens(string, return_odds)
	odd = []
	even = []
	ar = string.split('')
	ar.each do |char|
		if ar.index(char).even?
			even.push(char)
		else
			odd.push(char)
		end
	end
	odd = odd.join
	even = even.join
	if return_odds
		return odd
	else
		return even
	end
end

puts odds_and_evens('abcdefg', false)
