# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
# 
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.

# --------------------------------
#example
def sum_difference_product
  a , b = gets.split.map { |num| num.to_i }
  puts a + b
  puts a - b
  puts a * b
end

#mine
def sum_difference_product(num1,num2) # !> method redefined; discarding old sum_difference_product
  puts (num1 + num2).to_s + " " + (num1 - num2).to_s + " " + (num1 * num2).to_s # !> (...) interpreted as grouped expression
  end

# --------------------------------


# --------------------------------
def prompt
  puts 'Enter a number or bye'
  line = gets
end

#example
def hi_hi_goodbye
  prompt
  while (line = gets) && (line != 'bye')
    line.to_i.times { print 'hi' }
    puts
    prompt
  end
  puts "Goodbye!"
end

#mine
def hi_hi_goodby
  prompt
  while line != 'bye'
    if line == line.to_i
      puts line.to_i.times {puts 'hi'}
    else
      hi_hi_goodby
    end
  end
  puts 'bye!'
end

# --------------------------------
#my orig
class String
  def every_odd_char
    a = self.split(//)
    i = true
    b = []
    a.each do |letter|
      if i
        i = false
      else
        b << letter
        i = true
      end
    end
    puts "here's your new string: " + b.join
  end  
end
#mine an hour later
class String
  def every_even_char
    a = self.split(//)
    a.delete_if {|x| a.index(x.even?) % 2 == 1}
    a.join
  end
end
"123456789".every_even_char # => "13579"

#example
class String
  def every_other_char
    to_return = ''
    each_char.with_index do |char, index|  #notice how he uses multiple arguements within his block... explain
      to_return << char if index.even?
    end
    to_return
  end
end
"123456789".every_other_char # => "13579"

# --------------------------------
#mine
def first_pos(string)
  h = {}
  a = string.scan(/\w+/)
  a.each {|w| h[w] = a.index(w) }
  puts h
end
#example
def first_pos(str) # !> method redefined; discarding old first_pos
  to_return = {}
  str.split.each_with_index do |word, index|
    to_return[word] = index unless to_return[word]
  end
  to_return
end

# --------------------------------








# >> You are 25
