class Book
  attr_accessor :title
  
  def title=(title)
    conjunctions = %{and a an in the of}
    @title = title.split(/ /).map! {|word| (word == "i" or !conjunctions.include?(word.downcase)) ? word.capitalize : word.downcase }
    @title[0] = @title[0].capitalize
    @title = @title.join(' ') 
  end
end   