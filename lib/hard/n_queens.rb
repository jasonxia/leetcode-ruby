module Hard

  class NQueens

    def self.place(board_size)
      []
    end

    def self.display(queens)
      rows = queens.map { |col|
        Array.new(queens.size) { |index| index == col ? "Q" : "." }.join(" ")
      }
      puts rows.join("\n")
      puts "\n"
    end
  end
end
