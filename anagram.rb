class Anagram
  def initialize(word)
    @word_match = word.downcase
  end

  def match(word_list)
    anagrams = []

    word_list.each do |word|
      next if word.length != @word_match.length || word.downcase == @word_match
      if word.downcase.chars.all? { |char| @word_match.chars.include?(char) }
        anagrams << word
      end
    end

    anagrams.uniq
  end
end
