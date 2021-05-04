class Triangle
  def initialize(num1, num2, num3)
    @sides = [num1, num2, num3].sort
    raise ArgumentError unless valid?
  end

  def kind
    return 'equilateral' if equilateral?
    return 'isosceles' if isosceles?
    'scalene'
  end

  private

  def valid?
    @sides.all?{ |side| side > 0 } && @sides[0] + @sides[1] > @sides[2]
  end

  def equilateral?
    @sides[0] == @sides[1] && @sides[1] == @sides[2]
  end

  def isosceles?
    @sides[0] == @sides[1] || @sides[1] == @sides[2]
  end
end
