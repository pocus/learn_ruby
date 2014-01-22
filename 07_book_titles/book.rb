class Book

	def initialize

	end


	def title=(text)
		text_ary = text.split(" ")
		exceptions = ["and", "the", "or", "of", "over","in","a","an"]
		titled_ary = []
		titled_ary  = text_ary.collect do |word|

			unless exceptions.include?(word)
				word.capitalize
			else
				word
			end

		end
		titled_ary[0] = text_ary[0].capitalize

		@title = titled_ary.join(" ")

	end

	def title
		@title
	end


end
