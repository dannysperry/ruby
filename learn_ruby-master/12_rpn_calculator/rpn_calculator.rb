class RPNCalculator
   attr_accessor :arithmetic
   
   def initialize
     @arithmetic = []
   end 
   
   def push(num)
     @arithmetic << num
   end  
   
   def error
      raise "calculator is empty"
   end
   
   def plus
     @arithmetic.length > 1 ? @arithmetic << (@arithmetic.pop + @arithmetic.pop) : error
   end    
   
   def minus
     if @arithmetic.length > 1
       num = @arithmetic.pop
       @arithmetic << (@arithmetic.pop - num) 
     else
       error
     end
   end
   
   def times
     if @arithmetic.length > 1
       @arithmetic << (@arithmetic.pop * @arithmetic.pop)
     else
      error
     end
   end                   
   
   def divide 
     if @arithmetic.length > 1
       num = @arithmetic.pop   
       @arithmetic << (@arithmetic.pop / num.to_f)
     else
       error
     end
   end
   
   def value                                                                     
     @arithmetic[-1]
   end   
   
   def tokens(string)       
      string.split.map! {|x| x.match(/\+|\-|\/|\*/) ? x.to_sym : x.to_i}
   end
   
   def evaluate(string)  
      tokens(string).each do |x|
        case x
          when :+
            plus 
          when :-
            minus
          when :*
            times
          when :/
            divide
          else
            @arithmetic << x
        end
      end  
      value    
   end

end       