require './euler.rb'

describe Euler do
  describe "#problem01" do
    it "P01: Multiples of 3 & 5  bellow 10 sum 23." do
      expect(Euler.problem01(10)).to eq(23)
    end
  end
  describe "#problem02" do
    it "P02: Sum of even fibonacci." do
      expect(Euler.problem02(100)).to eq(44)
    end
  end
  describe "#problem03" do
    it "P03: Largest prime factor of 13195 is 29." do
      expect(Euler.problem03(13195)).to eq(29)
    end
  end
  describe "#problem04" do
    it "P04: Largest 2 digit palindrom is 9009." do
      expect(Euler.problem04(99)).to eq(9009)
    end
  end
  describe "#problem05" do
    it "P05: Smallest number divisible by numbers from 10 to 1." do
      expect(Euler.problem05(10)).to eq(2520)
    end
  end
  describe "#problem06" do
    it "P06: Diference between the sum of squares and the square of the sum for first 10 natural numbers." do
      expect(Euler.problem06(10)).to eq(2640)
    end
  end
end
