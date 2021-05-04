class Octal
  def initialize(num)
    @number = num
    @digits = num.chars
  end

  def to_decimal
    return 0 if invalid?
    decimal = 0
    counter = 0
    while counter < @number.length
      decimal += @digits.pop.to_i * 8 ** counter
      counter += 1
    end
    decimal
  end

  def invalid?
    @digits.each do |num|
      return true if num.to_i.to_s != num
      return true if num.to_i > 7
    end
    false
  end
end

p Octal.new('11').to_decimal
