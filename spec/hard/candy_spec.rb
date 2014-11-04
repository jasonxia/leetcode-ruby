require 'hard/candy'
# There are N children standing in a line. Each child is assigned a rating value.
#
# You are giving candies to these children subjected to the following requirements:
#
# Each child must have at least one candy.
# Children with a higher rating get more candies than their neighbors.
#
# What is the minimum candies you must give?

describe Hard::Candy do
  describe ".minimum" do
    it "minimum candies give to children" do
      children = [5, 6, 7, 4, 1, 2, 3, 2, 1, 7]
      expect(Hard::Candy.minimum(children)).to eq 19
    end
  end
end
