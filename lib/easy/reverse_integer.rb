module Easy

  class ReverseInteger

    def self.reverse(n)
      s = n.to_s.reverse.to_i
      n > 0 ? s : -s
    end

  end

end
