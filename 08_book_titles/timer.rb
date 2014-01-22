class Timer

	def initialize
		@seconds = 0
		# @hh = "00"
		# @mm = "00"
		# @ss = "00"
	end

	def seconds #reader for seconds
		@seconds
	end

	def seconds=(sec) #writer for seconds
		@seconds = sec
	end

	def time_string #return final string

		hh_count = 0
		mm_count = 0
		ss_count = 0


		while @seconds > 0
			if @seconds > 3600
				@seconds = @seconds - 3600
				hh_count += 1

			elsif @seconds >= 60
				@seconds = @seconds - 60
				mm_count += 1
			elsif @seconds >= 1
				@seconds = @seconds - 1
				ss_count += 1
			end
		end

		@hh = padded(hh_count)
		@mm = padded(mm_count)
		@ss = padded(ss_count)

		"#{@hh}:#{@mm}:#{@ss}"
	end



	def padded(num)
		if num == 0
			"00"
		elsif num < 10
			"0" + num.to_s
		else
			num.to_s
		end
	end


end
