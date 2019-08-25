require "rspec/autorun"
require_relative "../lib/calculator.rb"


describe Calculator do 

  describe "#add" do 
    it "returns the sum of its two arguments" do
      calc = Calculator.new

      expect(calc.add(7, 3)).to eq(10)
    end
  end

  describe "#subtract" do 
    it "returns the difference of its two arguments" do
      calc = Calculator.new

      expect(calc.subtract(13, 4)).to eq(9)
    end
  end

  describe "#multiply" do 
    it "returns the product of its two arguments" do
      calc = Calculator.new

      expect(calc.multiply(25, 8)).to eq(200)
    end
  end

  describe "#divide" do 
    it "returns the quotient of its two arguments" do
      calc = Calculator.new

      expect(calc.divide(15, 3)).to eq(5)
    end
  end

end