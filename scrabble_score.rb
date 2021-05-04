class Scrabble
  def initialize(word = nil)
    @word = word.downcase if word
  end

  def score(word = nil)
    @word = word.downcase if word
    total = 0
    @word.chars.each{ |letter| total += points(letter) }
    total
  end

  def points(letter)
    if ['a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't'].include?(letter)
      return 1
    elsif ['d', 'g'].include?(letter)
      return 2
    elsif ['b', 'c', 'm', 'p'].include?(letter)
      return 3
    elsif ['f', 'h', 'v', 'w', 'y'].include?(letter)
      return 4
    elsif ['k'].include?(letter)
      return 5
    elsif ['j', 'x'].include?(letter)
      return 8
    elsif ['q', 'z'].include?(letter)
      return 10
    else 
      return 0
    end
  end
end
