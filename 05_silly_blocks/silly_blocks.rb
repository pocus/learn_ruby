#David Yip

def reverser
	intake_str = yield
	ary = intake_str.split(" ")

	result_ary = ary.collect do |w| #use collect to apply operatoins to array elements and return a new arry
		w.reverse
	end

	result_ary.join(" ")

	#reverser is run "empty" but then line 4 calls "yield" which runs the block that is passed in, which happens to be "hello"
end

def adder(num = 1)
	yield + num
end
