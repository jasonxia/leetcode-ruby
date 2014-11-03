require 'medium/find_minimum_in_rotated_sorted_array'

describe Medium::FindMinimumInRotatedSortedArray do
  def rotate(arr)
    p = Random.rand(arr.size)
    arr.drop(p).concat(arr.take(p))
  end

  describe ".find_min" do
    it "find the minimum number" do
      expect(Medium::FindMinimumInRotatedSortedArray.find_min(rotate((0...10).to_a))).to eq 0
      expect(Medium::FindMinimumInRotatedSortedArray.find_min(rotate((10...30).to_a))).to eq 10
      expect(Medium::FindMinimumInRotatedSortedArray.find_min([10])).to eq 10
    end
  end
end
