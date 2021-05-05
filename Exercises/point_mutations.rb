class DNA
  def initialize(str)
    @strand = str.chars 
  end

  def hamming_distance(str)
    total = 0
    comp_strand = str.chars
    comp_strand.size > @strand.size ? length = @strand.size : length = comp_strand.size
    (0..length - 1).to_a.each { |index| total += 1 unless comp_strand[index] == @strand[index] }
    total
  end

end