class Temperature
  def initialize(temp_type={})
    @f = temp_type[:f]
    @c = temp_type[:c]
  end   
  
  def in_fahrenheit
    @f == nil ? @c = ((@c*9.0)/5.0)+32.0 : @f = f 
  end 
  def in_celsius
    @c == nil ? @f = ((@f-32.0)/9.0)*5.0 : @c = c
  end 
  
  def self.from_celsius(num)
    self.new(:c => num)
  end
  def self.from_fahrenheit(num)
     self.new(:f => num)
  end
  
end        
     
class Celsius < Temperature
 def initialize(num)
    @c = num
 end
end 

class Fahrenheit < Temperature
 def initialize(num)
    @f = num
 end
end


