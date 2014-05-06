def add (num1, num2)
  num1 + num2
end
  
def subtract (num1, num2)
  num1 - num2
end

def sum array
  sum = 0
  array.each{|num| sum = sum + num}
  sum
end

def multiply *numbers
  product = 1
  numbers.each{|num| product *= num}
  product
end

def power (base, exp)
  base ** exp
end

def factorial (num)
  count = 1
  fact = 1
  while count <= num
    fact = fact * count
    count += 1
  end
  fact
end
    