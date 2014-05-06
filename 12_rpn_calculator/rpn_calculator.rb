class RPNCalculator
  
  def initialize
    @calculator = []
  end
  
  def push input 
    @calculator.push(input)
  end
  
  def plus
    if !@calculator.empty? 
        @calculator.push(@calculator.pop + @calculator.pop)
    else
        raise Exception, "calculator is empty"
    end
  end
  
  def minus
    if !@calculator.empty? 
      @calculator.push(-@calculator.pop + @calculator.pop)
    else
      raise Exception, "calculator is empty"
    end
  end
  
  def divide
    if !@calculator.empty? 
      @calculator.push((1.0/@calculator.pop) * @calculator.pop)
    else raise Exception, "calculator is empty"
    end
  end
  
  def times
    if !@calculator.empty? 
      @calculator.push(@calculator.pop * @calculator.pop)
    else
      raise Exception, "calculator is empty"
    end
  end
  
  def tokens input
    input.split(" ").each do |inp|
      if inp == inp.to_i.to_s
        @calculator.push(inp.to_i)
      else 
        @calculator.push(inp.to_sym)
      end
    end
    @calculator
  end
  
  def evaluate input
    @output = []
    tokens(input).each do |item|
        if item == :+
          @output.push(@output.pop + @output.pop)
        elsif item == :-
          @output.push(-@output.pop + @output.pop)
        elsif item == :*
          @output.push(@output.pop * @output.pop)
        elsif item == :/
          @output.push((1.0/@output.pop) * @output.pop)
        else
          @output.push item
        end
    end
    @output.pop.to_f     
  end

  def value
     @calculator.last
  end
end