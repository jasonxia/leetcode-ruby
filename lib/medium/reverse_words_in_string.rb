module Medium
  class ReverseWordsInString

    def self.reverse(s)
      s.split(" ").reverse.join(" ")
    end
  end
end
