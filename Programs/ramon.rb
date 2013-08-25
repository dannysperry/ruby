# i=1 v=5 x=10 l=50 c=100 d=500 m=1000
puts 'give me a number and i\'ll turn it into a roman numeral'

def roman num

m=0
cm=0
d=0
cd=0
c=0
xc=0
l=0
xl=0
x=0
ix=0
v=0
iv=0
i=0

  if num >= 1000
    m = num / 1000
    num = num % 1000
  end 
  if num >= 900
    cm = num / 900
    num = num % 900
  end
  if num >= 500
    d = num / 500
    num = num % 500
  end
  if num >= 400
    cd = num / 400
    num = num % 400
  end
  if num >= 100
    c = num / 100
    num = num % 100
  end
  if num >= 90
    xc = num / 90
    num = num % 90
  end
  if num >= 50
    l = num / 50
    num = num % 50
  end
  if num >= 40
    xl = num / 40
    num = num % 40
  end
  if num >= 10
    x = num / 10
    num = num % 10
  end
  if num == 9
    ix = num / 9
    num = num % 9
  end
  if num >= 5
    v = num / 5
    num = num % 5
  end
  if num == 4
    iv = num / 4
    num = num % 4
  end
  if num < 4
    i = num / 1
    num = num%10
  end

puts 'M'*m + 'CM'*cm + 'D'*d + 'CD'*cd + 'C'*c + 'XC'*xc + 'L'*l + 'XL'*xl + 'X'*x + 'IX'*ix + 'V'*v + 'IV'*iv + 'I'*i
end  

num = gets.chomp.to_i
roman num
