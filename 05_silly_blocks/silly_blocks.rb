def reverser (&block)
  string = block.call 
  words = string.split(' ')
  output = []
    words.each do |word|
      output.push word.reverse
    end
  output.join(" ").to_s
end

def adder (num = 1, &block)
  val = block.call
  val = val + num
end

def repeater (num = 1, &block)
  num.times do
    block.call
  end
end