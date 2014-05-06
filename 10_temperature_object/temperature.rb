class Temperature 

  def initialize opts = {}
    @options = opts
    @c = @options[:c]
    @f = @options[:f]
  end
  
  def in_fahrenheit  
    if @c
       @f = (@c * 9.0 / 5.0) + 32
    else  
       @f 
    end  
  end
  
  def in_celsius 
    if @f
      @c = (@f - 32) * 5.0 / 9.0
    else  
      @c
    end
  end
  
###
  
  def self.from_celsius (num)
    @c = num
    self.new(:c => num)
  end
  
  def self.from_fahrenheit (num)
    @f = num
    self.new(:f => num)
  end
end

###

class Celsius < Temperature
  def initialize (num)
    @c = num
  end
end

class Fahrenheit < Temperature
  def initialize (num)
    @f = num
  end
end