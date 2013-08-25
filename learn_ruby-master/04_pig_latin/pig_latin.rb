class String  
  # check if string is a vowel or not
  def is_vowel?
    self.scan(/[aeiou]/i).empty? ? false : true
  end
  
  # returns characters of a string from y to x
  def first_chr(num2 = 1, num1 = 0)
    self[num2,num1]
  end         
end          

def translate(word)  
  # split word or words into an array 
  array = word.split(/ /)
  # enumerate through each word
  array.map! do |x|
    # append "ay" the end of the word if first letter is a vowel 
    @x = x
    if @x.first_chr().is_vowel?
      @x << "ay"
    else
    
     # DRYing up code in case/when statement          
    def similar_action(num)
         letter = @x.first_chr(num)
         @x.delete! letter
         # capitalize the new word if the original word was capitalized before being translated
         letter == letter.capitalize ? @x.capitalize << letter.downcase << "ay" : @x << letter << "ay"  
    end    
                   
       case 
       #   if first 3 letters are constanants or first letter is constant and next two letters are "qu"
       when ((@x.first_chr(3).is_vowel? == false) or ((@x.first_chr(2).is_vowel? == false) and (@x.first_chr(2,1) == "qu")))
          similar_action(3)
       #   if first 2 letters are constanants or the letters "qu"
       when ((@x.first_chr(2).is_vowel? == false) or ((@x.first_chr.is_vowel? == false) and (@x.first_chr(1) == "qu")))
         similar_action(2)
       #   if first letter is constanant
       when x.first_chr.is_vowel? == false
         similar_action(1)                  
       end
    end   
  end      
  # return the words back together into a single string
  array.join(' ')
end