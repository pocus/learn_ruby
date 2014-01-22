class Temperature

	def initialize(hash)
		@temp_hash = hash
		@value = nil
		@unit = nil

		if @temp_hash.has_key?(:f)
			@unit = :f
			@value = @temp_hash[:f].to_i

		elsif @temp_hash.has_key?(:c)
			@unit = :c
			@value = @temp_hash[:c].to_i
		end

	end

	def to_fahrenheit
		if @unit == :f
			@value.ceil
		elsif @unit == :c
		((@value * 9/5.0) + 32).ceil
		end
	end


	def to_celsius
		if @unit == :f
			 ((@value -32) * 5/9.0).ceil

		elsif @unit == :c
			@value.ceil
		end
	end


	def self.in_celsius(cel)
		new(:c => cel) #calling new inside a Class method ... novel.
	end

	def self.in_fahrenheit(fah)
		new(:f => fah)
	end

end
