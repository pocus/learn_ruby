class Temperature



	def initialize(hash)
		@temp_hash = hash
	end

	def to_fahrenheit

		if @temp_hash.has_key?(:f)
			@temp_hash[:f]

		elsif @temp_hash.has_key?(:c)
			(@temp_hash[:c].to_i * 9/5.0) + 32

		end


	end

	def to_celsius

		if @temp_hash.has_key?(:f)
			(@temp_hash[:f] -32) * 5/9.0

		elsif @temp_hash.has_key?(:c)
			@temp_hash[:c]

		end


	end


	def self.in_celsius(cel)
	end


end
