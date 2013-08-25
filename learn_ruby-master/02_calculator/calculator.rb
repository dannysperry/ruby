def add(num1,num2)
  num1+num2
end

def subtract(num1,num2)
  num1-num2
end

def sum(array)
    if array.empty?
       0
    elsif array.length == 1
      array[0]
    elsif array.length == 2
      array[0]+array[1]
    else
      returned = 0
      array.map {|x| returned += x}
      returned
    end
end

def multiply(num1,num2,num3=1,num4=1,num5=1,num6=1)
  num1*num2*num3*num4*num5*num6
end

def power(num,exp)
  num**exp
end

def factorial(num)
  if num <= 1
    1
  else
    total = 1
    (1..num).each {|x| total *= x}
    total
  end
end
