def bubble_sort(arr)
  sorted = []
  until arr.empty?
    arr.each do |x|
      if x == arr.min
        sorted << x 
        arr.delete(x)
      end
    end        
  end
  sorted          
end 

bubble_sort(["banana","apple","orange","green"]) # => ["apple", "banana", "green", "orange"]
