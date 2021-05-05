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
#   def process
#     file_data = File.read("user.txt").split

# # ["user1", "user2", "user3"]
#   end
# end

# analyzer = TextAnalyzer.new
# analyzer.process { # your implementation }
# analyzer.process { # your implementation }
# analyzer.process { # your implementation }


items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  # puts "#{items.join(', ')}"
  puts "Nice selection of food we have gathered!"
end

# gather(items){ |food| puts food }

# gather(items) do | *veg, grain|
#   puts veg.join(', ')
#   puts grain
# end

gather(items) do | apple, *veg, grain|
  puts apple
  puts veg.join(', ')
  puts grain
end

gather(items) do | fruit, *food|
  puts fruit
  puts food.join(', ')
end

gather(items) do | apples, corn, cabbage, wheat |
  puts "#{apples}, #{corn}, #{cabbage}, and #{wheat}"
end

# birds = ['crow', 'finch', 'hawk', 'eagle']

# def types(birds)
#   yield birds
# end

# types(birds) do |_, _, *raptors|
#   puts "Raptors: #{raptors.join(', ')}."
# end
