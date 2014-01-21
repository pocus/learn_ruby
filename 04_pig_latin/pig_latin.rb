#David Yip

def translate(word)

	if word.include?(" ")

		sub_words = word.split(" ")
		result = []

		sub_words.each do |w|
			result << assembled_word(w,number_of_leading_cons(w))
		end

		result.join(" ")

		else
			assembled_word(word,number_of_leading_cons(word))
		end
end

def number_of_leading_cons(word)
	consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]

	if word[0] + word[1] == "qu"
	 return 2

	elsif (word.include?("qu") && word[0] + word[1] != "qu")
		word.index("u") + 1

	else
		num = 0
		word.each_char do |c|

			if 	consonants.include?(c)
				num += 1
			else
				return num
			end

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