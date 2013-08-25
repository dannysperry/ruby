def echo(string)
  "#{string}"
end

def shout(string)
  "#{string.upcase}"
end

def repeat(string, num=2)
  array = []
  num.times {array << string}
  array.join(' ')
end

def start_of_word(word,num)
  word[0,num]
end

def first_word(string)
  array = string.split(' ')
  array[0]
end

def titleize(word)
  little_words = ['over','the','and']
  array = word.split(' ')
  array.map do |x| 
      little_words.each do |l|
        while x != array[0] && x == l  
          x = x.downcase
        end
      end  
      x[0] = x[0].upcase
  end
  array.join(' ')
end