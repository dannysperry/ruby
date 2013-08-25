def sort array
  sorted = []
  array.each do |x|
    while array.length > 0
      if x = array.min
        array.delete(x)
        sorted.push(x)
      else
        sort array
      end
    end
  end
  puts sorted.join(', ')
end

array = ['dog','cat','Ant','Elephant']

