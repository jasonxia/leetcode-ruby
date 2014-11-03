module Hard

  class NQueens

    def self.place(board_size)
      place_recursive(board_size, board_size)
    end

    def self.display(queens)
      rows = queens.map { |col|
        Array.new(queens.size) { |index| index == col ? "Q" : "." }.join(" ")
      }
      puts rows.join("\n")
      puts "\n"
    end

    private
    def self.place_recursive(board_size, row)
      return [[]] if row == 0
      current_solutions = place_recursive(board_size, row - 1)
      result = []
      current_solutions.each do |queens|
        (0...board_size).each do |col|
          result.push([col] + queens) if is_safe?(col, queens)
        end
      end
      result
    end

    def self.is_safe?(col, queens)
      queens.each_with_index do |c, index|
        return false if (col == c) || ((col - c).abs == (index + 1))
      end
      true
    end
  end
end
