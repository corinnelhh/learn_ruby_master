class Array
  
  def sum
    total = 0
    self.each {|unit| total = total + unit}
    total
  end
  
  def square
    if self.length > 0
      self.map! {|unit| unit = unit ** 2}
    end
    self
  end
  
  def square!
      self.map! {|unit| unit = unit ** 2}
  end
  
end