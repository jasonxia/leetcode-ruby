require 'medium/reverse_words_in_string'
# Given an input string, reverse the string word by word.
#
# For example,
# Given s = "the sky is blue",
# return "blue is sky the".
#
#
# Clarification:
#
# What constitutes a word?
# A sequence of non-space characters constitutes a word.
# Could the input string contain leading or trailing spaces?
# Yes. However, your reversed string should not contain leading or trailing spaces.
# How about multiple spaces between two words?
# Reduce them to a single space in the reversed string.

describe Medium::ReverseWordsInString do

  describe ".reverse" do
    it "reverse words in a string" do
      expect(Medium::ReverseWordsInString.reverse(" ")).to eq ""
      expect(Medium::ReverseWordsInString.reverse("I love Ruby")).to eq "Ruby love I"
      expect(Medium::ReverseWordsInString.reverse("I  love   Ruby")).to eq "Ruby love I"
    end
  end
end
