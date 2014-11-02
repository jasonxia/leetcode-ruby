require 'easy/reverse_integer'

describe Easy::ReverseInteger do
  describe ".reverse" do
    it "reverse the integer" do
      expect(Easy::ReverseInteger.reverse(123)).to eq 321
      expect(Easy::ReverseInteger.reverse(-123)).to eq -321
      expect(Easy::ReverseInteger.reverse(100)).to eq 1
      expect(Easy::ReverseInteger.reverse(1002)).to eq 2001
    end
  end
end
