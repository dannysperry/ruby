#sorting array

def sort(array)  
  sorted = []
  until array.empty?
    word = array.delete(array.min)
    sorted << word
  end
  sorted
end   



sort(%w{z y x t v r l n o c b a}) # => ["a", "b", "c", "l", "n", "o", "r", "t", "v", "x", "y", "z"]

