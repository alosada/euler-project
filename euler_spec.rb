require './euler.rb'

describe Euler do
  describe "#problem01" do
    it "P1: Multiples of 3 & 5  bellow 10 sum 23." do
      expect(Euler.problem01(10)).to eq(23)
    end
  end
  describe "#problem02" do
    it "P2: Sum of even fibonacci." do
      expect(Euler.problem02(100)).to eq(44)
    end
  end
  describe "#problem03" do
    it "P3: Largest prime factor of 13195 is 29." do
      expect(Euler.problem03(13195)).to eq(29)
    end
  end
  describe "#problem04" do
    it "P4: Largest 2 digit palindrom." do
      expect(Euler.problem04(99)).to eq(9009)
    end
  end
end
