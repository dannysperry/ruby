class Die
  
  def initialize
    roll
  end
  
  def roll
    @showing = 1 + rand(6)
  end
  
  def showing
    @showing
  end
  
end

dice = [Die.new, Die.new]

dice.each do |die|
  puts die.roll
end
# >> 6
# >> 4
