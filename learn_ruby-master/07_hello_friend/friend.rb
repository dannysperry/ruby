class Friend
  attr_accessor :name
  
  def greeting(name='')
    name.empty? ? "Hello!" : "Hello, #{name}!"
  end
end