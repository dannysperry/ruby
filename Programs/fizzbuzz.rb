b = 100
while b > 1
  b -= 1
  if (b%3!=0) and (b%5!=0)
    puts b 
  elsif (b%3==0) and (b%5==0)
    puts 'fizzbuzz ' + b.to_s  
  elsif b%3==0
    puts 'fizz ' + b.to_s 
  elsif b%5==0
    puts 'buzz ' + b.to_s
  end
end
