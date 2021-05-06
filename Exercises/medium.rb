# class Device
#   def initialize
#     @recordings = []
#   end

#   def record(recording)
#     @recordings << recording
#   end

#   def listen
#     record(yield) if block_given?
#   end

#   def play
#     puts @recordings.pop
#   end
# end

# listener = Device.new
# listener.listen { "Hello World!" }
# listener.listen
# listener.play # Outputs "Hello World!"

# class TextAnalyzer
#   def process(file_name)
#     file_data = File.read(file_name)
#     counter = yield(file_data)
#     puts counter.join(" ")
#   end
# end

# analyzer = TextAnalyzer.new
# analyzer.process("sample_test.txt") do |text| 
#   [text.split(/\n\n/).size, "paragraph"]
# end
# analyzer.process ("sample_test.txt") do |text| 
#   [text.split(/\n/).size, "paragraph"]
# end
# analyzer.process ("sample_test.txt") do |text| 
#   [text.split(" ").size, "words"]
# end


# items = ['apples', 'corn', 'cabbage', 'wheat']

# def gather(items)
#   puts "Let's start gathering food."
#   yield(items)
#   # puts "#{items.join(', ')}"
#   puts "Nice selection of food we have gathered!"
# end

# gather(items){ |food| puts food }

# gather(items) do | *veg, grain|
#   puts veg.join(', ')
#   puts grain
# end

# gather(items) do | apple, *veg, grain|
#   puts apple
#   puts veg.join(', ')
#   puts grain
# end

# gather(items) do | fruit, *food|
#   puts fruit
#   puts food.join(', ')
# end

# gather(items) do | apples, corn, cabbage, wheat |
#   puts "#{apples}, #{corn}, #{cabbage}, and #{wheat}"
# end

# birds = ['crow', 'finch', 'hawk', 'eagle']

# def types(birds)
#   yield birds
# end

# types(birds) do |_, _, *raptors|
#   puts "Raptors: #{raptors.join(', ')}."
# end

def convert_to_base_8(n)
  n.to_s(8).to_i # replace these two method calls
end

# The correct type of argument must be used below
base8_proc = method(:convert_to_base_8).to_proc

# We'll need a Proc object to make this code work. Replace `a_proc`
# with the correct object
[8, 10, 12, 14, 16, 33].map(&base8_proc)

def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      if block_given?
        next if yield(array[index - 1], array[index])
      elsif array[index - 1] <= array[index]
        next
      end
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
  nil
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [5, 3, 7]
bubble_sort!(array) { |first, second| first >= second }
p array == [7, 5, 3]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = [6, 12, 27, 22, 14]
bubble_sort!(array) { |first, second| (first % 7) <= (second % 7) }
p array == [14, 22, 12, 6, 27]

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array)
p array == %w(Kim Pete Tyler alice bonnie rachel sue)

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array) { |first, second| first.downcase <= second.downcase }
p array == %w(alice bonnie Kim Pete rachel sue Tyler)
