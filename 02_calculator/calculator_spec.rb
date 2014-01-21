# In this problem we are going to make a calculator.

# Remember to create the file!
require_relative "calculator.rb"

# #add takes two parameters and adds them
describe "add" do

  it "adds 0 and 0" do
    add(0,0).should == 0
  end

  it "adds 2 and 2" do
    add(2,2).should == 4
  end

  it "adds positive numbers" do
    add(2,6).should == 8
  end
end

# #subtract takes two parameters and subtracts the second from the first
describe "subtract" do

  it "subtracts numbers" do
    subtract(10,4).should == 6
  end
end

# #sum takes an *array* of numbers and adds them all together
# This one is a bit trickier!
describe "sum" do

  it "computes the sum of an empty array" do
    sum([]).should == 0
  end

  it "computes the sum of an array of one number" do
    sum([7]).should == 7
  end

  it "computes the sum of an array of two numbers" do
    sum([7,11]).should == 18
  end

  it "computes the sum of an array of many numbers" do
    sum([1,3,5,7,9]).should == 25
  end
end

# Extra Credit:
# If you feel you're up for the challenge, fill in the missing code in the tests below,
# based off the descriptions, and get them to pass.

describe "#multiply" do

  it "multiplies two numbers" do
    expect(multiply([9,5]) ).to eq(45)
  end

  it "multiplies several numbers" do
    expect(multiply([9,5,10])).to eq(450)
  end

end

# http://en.wikipedia.org/wiki/Factorial
describe "#factorial" do

  it "computes the factorial of 0" do
    expect(factorial(0)).to eq(0)
  end

  it "computes the factorial of 1" do
    expect(factorial(1)).to eq(1)
  end

  it "computes the factorial of 2" do
    expect(factorial(2)).to eq(2)
  end

  it "computes the factorial of 5" do
    expect(factorial(5)).to eq(120)
  end

  it "computes the factorial of 10" do
    expect(factorial(10)).to eq(3628800)
  end
end
