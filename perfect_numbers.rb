class PerfectNumber
  def self.classify(number)
    raise StandardError unless number > 1
    sum_of_div = find_divivors(number).sum
    return 'deficient' if sum_of_div < number
    return 'perfect' if sum_of_div == number
    return 'abundant' if sum_of_div > number
  end

  def self.find_divivors(number)
    divisors = []
    (1...number).to_a.each { |num| divisors << num if number % num == 0 }
    divisors
  end
end

p PerfectNumber.classify(13)