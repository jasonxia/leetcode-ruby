module Hard

  class Candy

    #    The soluiton is O(2n) run-time complexity
    #
    #    For example:
    #
    #        ratings[] = { 5, 6, 7, 4, 1, 2, 3, 2, 1, 7 }
    #
    #    1) Go through the ratings from left to right.
    #
    #       Find the each increasing sub-array, giving the minimal candy
    #
    #        ratings[] = { 5, 6, 7,   4,   1, 2, 3,   2,   1, 7 }
    #                      ------>    ->   ------>    ->   --->
    #          candy[] = { 1, 2, 3,   1,   1, 2, 3,   1,   1, 2 }
    #
    #    2) Go through the raings from right to left.
    #
    #             ratings[] = { 5,   6,   7, 4, 1,   2,   3, 2, 1,   7 }
    #                           <-   <-   <------    <-   <------    <-
    #          prev_candy[] = { 1,   2,   3, 1, 1,   2,   3, 1, 1,   2 }
    #                                        +1              +1
    #               candy[] = { 1,   2,   3, 2, 1,   2,   3, 2, 1,   2 }
    #
    #    3) total candy is 19

    def self.minimum(children)
      candies = [1]
      (1...children.size).each {|i| children[i] > children[i-1] ? candies.push(candies[i-1] + 1) : candies.push(1)}

      sum = candies.last
      (children.size-2).downto(0).each do |i|
        candies[i] += 1 if children[i] > children[i+1] && candies[i] <= candies[i+1]
        sum += candies[i]
      end

      sum
    end
  end
end
