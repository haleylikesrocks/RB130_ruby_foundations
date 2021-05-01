# def times(n)
#   counter = 0
#   while (counter < n && block_given?) do
#     yield(counter)
#     counter += 1
#   end
#   n
# end

# times(5) do |num|
#   puts num
# end

def each(array)
  counter = 0
  while counter < array.size do
    yield(array[counter])
    counter += 1
  end
  array
end

# each([1, 2, 3, 4, 5]) do |num|
#   puts num
# end

def select(array)
  counter = 0
  ret_array = []
  while counter < array.size
    ret = yield(array[counter])
    ret_array << array[counter] if ret
    counter += 1
  end
  ret_array
end

# array = [1, 2, 3, 4, 5]

# p select(array) { |num| num.odd? }      # => [1, 3, 5]
# p select(array) { |num| puts num }      # => [], because "puts num" returns nil and evaluates to false
# p select(array) { |num| num + 1 }       # => [1, 2, 3, 4, 5], because "num + 1" evaluates to truep \

def reduce(array, acc = 0)
  counter = 0
  while counter < array.size
    acc = yield(acc, array[counter])
    counter += 1
  end
  acc
end

array = [1, 2, 3, 4, 5]

p reduce(array) { |acc, num| acc + num }                    # => 15
p reduce(array, 10) { |acc, num| acc + num }                # => 25
p reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass
