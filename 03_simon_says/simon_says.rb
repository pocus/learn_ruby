def echo(text)
	text
end

def shout(text)
	text.upcase
end

def repeat(text, num = 1)
	if num == 1
		text + " " + text
	elsif num > 1
		counter = 1
		string_end = ""
		while counter <= num
			string_end = string_end + " #{text}"
			counter += 1
		end
	string_end.lstrip
	end
end

def start_of_word(text, num)
	text[0,num]
end

def first_word(text)
	text[0,text.index(" ")]
end

def titleize(text)
	text_ary = text.split(" ")
	exceptions = ["and", "the", "or", "of", "over"]
	titled_ary = []
	titled_ary  = text_ary.collect do |word|

		unless exceptions.include?(word)
			word.capitalize
		else
			word
		end

	end
	titled_ary[0] = text_ary[0].capitalize
	titled_ary.join(" ")
end