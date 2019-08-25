require "rspec/autorun"
require_relative "../lib/calculator.rb"


describe Calculator do 
  describe "#add" do 
    it "returns the sum of its two arguments" do
      calc = Calculator.new

      expect(calc.add(7, 3)).to eq(10)
    end
  end
end