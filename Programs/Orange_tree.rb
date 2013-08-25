class OrangeTree
  
  def initialize
    @age = 0
    @height = 0
    @fruit = 0 
  end
  
  def count_oranges
    puts "you have #{@fruit} oranges left."
    puts "you don't have any fruit " if @fruit == 0
      
  end
  
  def pick_orange(num)
    if num > @fruit
      puts "You don't have that many oranges, you'll have to wait till next year."
    else
      puts "You picked #{num} of your oranges."
      @fruit = @fruit - num
    end
  end
  
  def one_year_passes
    @fruit = 0
    @height =+ 1
    @age += 1
    @fruit = @age*4
    puts "Your #{@age} year old tree produced #{fruit} oranges this year."
    death
  end
  

  private # ----------------------------------------------------------------------------------
  
  def height
    @height
  end
  
  def fruit
    @fruit = 0 if @age < 3
    @fruit
  end

  def death
    if @age == 12
      puts "You're tree has reached the end of its life... its dead"
     exit 
    end
  end
  
end


# ----------------------------------------------------------------------------------

tree = OrangeTree.new
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes



# >> Your 1 year old tree produced 0 oranges this year.
# >> Your 2 year old tree produced 0 oranges this year.
# >> Your 3 year old tree produced 12 oranges this year.
# >> Your 4 year old tree produced 16 oranges this year.
# >> Your 5 year old tree produced 20 oranges this year.
# >> Your 6 year old tree produced 24 oranges this year.
# >> Your 7 year old tree produced 28 oranges this year.
# >> Your 8 year old tree produced 32 oranges this year.
# >> Your 9 year old tree produced 36 oranges this year.
# >> Your 10 year old tree produced 40 oranges this year.
# >> Your 11 year old tree produced 44 oranges this year.
# >> Your 12 year old tree produced 48 oranges this year.
# >> You're tree has reached the end of its life... its dead
