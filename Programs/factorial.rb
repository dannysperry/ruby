class Integer
  def fact
    if self < 0
      puts 'Number need to be a positive whole number.'
    elsif self <= 1
      1
    else
      self * (self-1).fact
    end
  end
end

class Float # used incase float is entered instead of integer
  def fact
    puts "Since you didn't enter a whole number I rounded it for you!"
    self.round.fact
  end
end

puts 3.fact
# >> 6
