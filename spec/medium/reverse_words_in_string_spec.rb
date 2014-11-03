require 'medium/reverse_words_in_string'

describe Medium::ReverseWordsInString do

  describe ".reverse" do
    it "reverse words in a string" do
      expect(Medium::ReverseWordsInString.reverse(" ")).to eq ""
      expect(Medium::ReverseWordsInString.reverse("I love Ruby")).to eq "Ruby love I"
      expect(Medium::ReverseWordsInString.reverse("I  love   Ruby")).to eq "Ruby love I"
    end
  end
end
