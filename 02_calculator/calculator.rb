#David Yip

def add(num1,num2)
	num1 + num2
end

def subtract(num1,num2)
	num1 - num2
end

def sum(ary)

	if ary == [] then return 0 end

	result = 0
	ary.each do |n|
		result = result + n
	end
	result
end

def multiply(ary)

	#if ary == [] then return 0 end

	result = 1
	ary.each do |n|
		result = result * n
	end
	result

end

def factorial(num)

	if num == 0
		return 0
	else
		result = 1
		while num != 0
			result = result * num
			num -= 1
		end
		result
	end
end





