module Medium

  class FindMinimumInRotatedSortedArray

    def self.find_min(arr)
      p = 0
      q = arr.size - 1
      while(arr[p] > arr[q])
        p = p + 1
      end
      arr[p]
    end

  end
end
