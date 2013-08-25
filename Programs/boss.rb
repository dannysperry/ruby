# get array of words
# downcase all words
# find smallest and push to array



def shuffle
  a.sort{rand() - 0.5}
end

def shuffle!
size.downto(1) { |n| push delete_at(rand(n)) }
  self
end


array = ['cat','dog','ant','elephant','giraffe','baby','john']

x = array.shuffle
y = array.shuffle!

puts x.join(', ')
puts y.join(', ')