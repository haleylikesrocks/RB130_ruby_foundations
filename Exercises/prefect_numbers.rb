class PerfectNumber
  def initialize; end

  def classify(number)
    raise StandardError unless number > 0
    sum_of_div = find_divivors(number)
    return 'deficient' if sum_of_div < number
    return 'perfect' if sum_of_div == number
    return 'abundant' if sum_of_div > number
  end

  def find_divivors(number)
    divisors = []
    (0...number).to_a.each { |num| divisors << num if number % num == 0 }
    divisors
  end
end
