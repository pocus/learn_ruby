#David Yip

def translate(word)

	phonemes = ["sch","qu"]

	assembled_word(word,number_of_leading_cons(word))

#	text_ary = text.split(" ")
#	titled_ary = []
#	titled_ary  = text_ary.collect do |word|

	#if (phonemes.include?(word[0,2]) || phonemes.include?(word[0,3])) #for sch and qu

	#erry.ch.ay



			# else
			# 	word[1..word.length] + word[0] + "ay" #words beginning with one consonant
			# end


	#end


	# if consonants.include?(word[0]) && consonants.include?(word[1])  #&& consonants.include?(word[2])

	# word[2..word.length] + word[0] + word[1] + "ay" # two initial constants

	# end

end








def number_of_leading_cons(word)
	consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
	num = 0

	word.each_char do |c|

		if 	consonants.include?(c)
			num += 1
		else
			return num
		end

	end

end



def assembled_word(word, number_of_leading_cons)


	if number_of_leading_cons == 0

			# elsif vowels.include?(word[0])
			word + "ay" #words beginning with vowels

	else

		counter = 0
		base_word = word[number_of_leading_cons..word.length]

		while counter < number_of_leading_cons

			base_word = base_word + word[counter]
			counter += 1

		end

		base_word + "ay"

	end

end