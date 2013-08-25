class Fixnum
  def in_words
    self==0 ? "zero" : remainder(self)
  end
end

def words(i,word = nil)
  case i
  when 0
    return false
  when 1
    return "one#{word}"
  when 2
    return "two#{word}"
  when 3
    return "three#{word}"
  when 4
    return "four#{word}"
  when 5
    return "five#{word}"
  when 6
    "six#{word}"
  when 7
    "seven#{word}"
  when 8
    "eight#{word}"
  when 9
    "nine#{word}"
  end
end

def teens(i)
  case i
  when 11
    return "eleven"
  when 12
    return "twelve"
  when 13
    return "thirteen"
  when 14
    return "fourteen"
  when 15
    return "fifteen"
  when 16 
    return "sixteen"
  when 17
    return "seventeen"
  when 18
    return "eighteen"
  when 19
    return "nineteen"
  end
end


def tens(i)
  case i
  when 20
    return "twenty"
  when 30
    return "thirty"
  when 40
    return "forty"
  when 50
    return "fifty"
  when 60
    return "sixty"
  when 70
    return "seventy"
  when 80
    return "eighty"
  when 90
    return "ninety"
  end
end

def def_and_remain(word)
  i ||= i/word
  x %= word
  words(i, " #{word}") 
end

def remainder(x)
  trillion = 1000000000000
  billion = 1000000000
  million = 1000000
  thousand = 1000  
  hundred = 100
  final = []
  i = x
  i /= trillion
  x %= trillion
  final << words(i, " trillion") 

  i /= billion
  x %= billion
  final << words(i, " billion")

  i /= million
  x %= million
  final << words(i, " million")

  i /= thousand
  x %= thousand
  final << words(i, " thousand")

  i /= 100
  x %= 100
  final << words(i, " hundred")

  final << teens(x) if x < 20 && x > 10

  i /= 10
    final << teens(x) if i == 1
  x %= 10
  final << tens(i)

  final << words(x)
end
words(0," trillion") # => false
remainder(9) # => [false, false, false, false, false, nil, "nine"]
1.in_words # => 0
