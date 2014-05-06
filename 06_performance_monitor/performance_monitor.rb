def measure (num = 1, &block)
  start_time = Time.now
  num.times do 
    block.call
  end
  end_time = Time.now
  elapsed_time = (end_time - start_time) / num 
end