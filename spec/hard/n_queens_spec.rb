require 'hard/n_queens'

#**********************************************************************************
#
# The n-queens puzzle is the problem of placing n queens on an n×n chessboard
# such that no two queens attack each other.
#
# Given an integer n, return all distinct solutions to the n-queens puzzle.
#
# Each solution contains a distinct board configuration of the n-queens' placement,
# where 'Q' and '.' both indicate a queen and an empty space respectively.
#
# For example,
# There exist two distinct solutions to the 4-queens puzzle:
#
# [
#  [".Q..",  // Solution 1
#   "...Q",
#   "Q...",
#   "..Q."],
#
#  ["..Q.",  // Solution 2
#   "Q...",
#   "...Q",
#   ".Q.."]
# ]
#
#
#*********************************************************************************/

describe Hard::NQueens do

  describe ".place" do

    it "should place 4 queens on chessboard" do
      result = Hard::NQueens.place(4)
      result.each { |queens| Hard::NQueens.display(queens) }

      expect(result.size).to eq 2
      expect(result).to include [1, 3, 0, 2]
      expect(result).to include [2, 0, 3, 1]
    end
  end
end
