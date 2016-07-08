# Your code here
require 'calculator'

describe Calculator do 

  let(:calculator) { Calculator.new }
  let(:stringified_calculator) { Calculator.new(true) }
  let(:a) { 4 }
  let(:b) { 2 }
  let(:c) { 1 }

  describe "#initialize" do
    it "instantiates a Calculator object" do
      expect(calculator).to be_an_instance_of(Calculator)
    end
  end

  describe "#add" do
    it "adds two numbers correctly" do
      expect(calculator.add(a, b)).to eq(6)
    end

    it "adds two other numbers correctly" do
      expect(calculator.add(a, c)).to eq(5)
    end
  end

  describe "#subtract" do
    it "subtracts the second argument from the first" do
      expect(calculator.subtract(a,b)).to eq(2)
    end
  end 

  describe "#multiply" do
    it "mulitplies two numbers and returns the product" do
      expect(calculator.multiply(a,b)).to eq(8)
    end
  end

  describe "#divide" do
    it "divides the first argument by the second" do
      expect(calculator.divide(a,b)).to eq(2)
    end
  end

  describe "#pow" do
    it "raises the first number to the second" do
      expect(calculator.pow(a,b)).to eq(16)
    end
  end

  describe "#sqrt" do
    it "returns the square root of a number" do
      expect(calculator.sqrt(a)).to eq(2)
    end
  end

  describe "#memory" do
    it "defaults to nil" do
      expect(calculator.memory).to eq(nil)
    end

    it "saves the value of a method call in the calculator object" do
      value = calculator.add(a,b)
      calculator.memory = value
      expect(calculator.memory).to eq(6)
    end

    it "wipes the value in memory" do
      value = calculator.add(a,b)
      calculator.memory = value
      calculator.memory
      expect(calculator.memory).to eq(nil)
    end

  end

  describe "#output" do
    context "when stringify is set to true" do
      it "returns a stringified result of a calculation" do
        value = stringified_calculator.add(a,b)
        expect(calculator.output(value).is_a?(String)).to eq(true)
      end
    end

    context "when stringify is set to false" do
      it "returns the calculation as a Fixnum" do
        value = calculator.add(a,b)
        expect(calculator.output(value).is_a?(Fixnum)).to eq(true)
      end

      it "does not return the calculation as a String" do
        value = calculator.add(a,b)
        expect(calculator.output(value).is_a?(String)).to eq(false)
      end
    end
  end

end