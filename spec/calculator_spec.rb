# Your code here
require 'calculator'

describe Calculator do 

  let(:calculator) { Calculator.new }
  let(:a) { 4 }
  let(:b) { 2 }

  describe "#initialize" do
    it "instantiates a Calculator object" do
      expect { Calculator.new }.not_to raise_error
    end
  end

  describe "#add" do
    it "adds two numbers correctly" do
      expect(calculator.add(a, b)).to eq(6)
    end
  end

end