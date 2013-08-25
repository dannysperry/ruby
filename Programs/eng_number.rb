class Integer
  def to_eng
    if self < 0
      return 'number must be positive'
    end
    if self == 0
       return 'zero'
    end            
    
    @num_string = ''
    
    ones_place = %w{one two three four five six seven eight nine}
    tens_place = %w{ten twenty thirty forty fifty sixty seventy eighty ninety}
    teenagers = %w{eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen}
  
    # "@left" is how much of the number is left
    # "@write" is the part we are writing
    
    @left = self
    def wow(word, number) # !> method redefined; discarding old wow
       @write = @left/number
       @left = @left - @write*number
       if @write > 0
          count = @write.to_eng
          @num_string = @num_string + "#{count} #{word.chop}"
          if @left > 0
             @num_string += ' '
          end
       end
    end
    
    wow("quadrillions",1000000000000000)
    wow("trillions", 1000000000000)
    wow("billions", 1000000000)
    wow("millions", 1000000)
    wow("thousands", 1000)
    wow("hundreds", 100)
    
    @write = @left/10
    @left = @left - @write*10
    
    if @write > 0
       if ((@write == 1) and (@left > 0))
         @num_string += teenagers[@left-1]
         @left = 0
       else
         @num_string += tens_place[@write-1]
       end
       
       if @left > 0
          @num_string += '-'
       end
    end                    
    
    @write = @left
    @left = 0
    
    if @write > 0
       @num_string += ones_place[@write-1]
    end                                 
    
    @num_string
  end 
                                                      
end

1100998944414421.to_eng # => "one quadrillion one hundred trillion nine hundred ninety-eight billion nine hundred forty-four million four hundred fourteen thousand four hundred twenty-one"
