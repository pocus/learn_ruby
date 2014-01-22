class Array #refers to existing class Array

	def sum
		total = 0
		self.each do |n| #using self to refer to the calling array object
			total = total + n
		end
		total
	end

	def square
		result = []
		result = self.collect {|n| n ** 2}
		result
	end

	def square!
		self.replace(self.square) #using pre-existing destructive classes
		self
	end

end