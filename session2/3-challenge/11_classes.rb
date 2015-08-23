# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong

	def initialize number
		if number<0
			@number = 0
		elsif number>99
			@number = 99
		else
			@number = number
		end
	end

	def print_song
		song @number
		
	end

	private

	def to_english bottles
		ones = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
		tens = ['empty', 'empty', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
		teens = ['ten', 'elleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'ninteen']

		num_bottles = bottles.to_s


		if num_bottles.length == 1
			return ones[num_bottles[0].to_i]
		else
			first = num_bottles[0].to_i
			second = num_bottles[1].to_i
			if first == 1
				return teens[second]
			elsif first !=1 and second ==0
				return tens[first]
			else
				return tens[first] + ' ' + ones[second]
			end
		end
	end

	def song number

		if number == 0
			return puts "No more bottles of beer on the wall!"
		end

		if number == 1
		return puts """#{to_english(number).capitalize} bottle of beer on the wall, #{to_english(number)} bottle of beer.
Take one down and pass it around, no more bottles of beer on the wall.
		"""
	
		elsif number ==2
		puts """#{to_english(number).capitalize} bottles of beer on the wall, #{to_english(number)} bottles of beer.
Take one down and pass it around, one bottle of beer on the wall.
		"""

		else 
		puts """#{to_english(number).capitalize} bottles of beer on the wall, #{to_english(number)} bottles of beer.
Take one down and pass it around, #{to_english(number-1)} bottles of beer on the wall.
		"""
		end
		song(number-1)
	end

end

song = BeerSong.new 5
song.print_song

