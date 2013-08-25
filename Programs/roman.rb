class Integer
  ROMAN = {
    1 => "I", 4 => "IV", 5 => "V", 9 => "IX", 10 => "X", 40 => "XL", 50 => "L", 90 => "XC", 100 => "C", 400 => "CD", 500 => "D", 900 => "CM", 1000 => "M"
    }
    
    def roman
        i, num = self, ""
        ROMAN.keys.sort.reverse.each do |n|
          num << (ROMAN[n]*(i/n))
          i%=n
        end
        num
    end
    
  end
  
  puts ' enter a number and i\'ll turn it into a roman numeral'
  n = gets.chomp.to_i
  puts n.roman
  