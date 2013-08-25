#ask for starting year and ending year
#display leapyears
#leapyears  #/4 = true    #/100 = false    #/400 = true
# v2 makes sure that list of years doesn't execute until first number is less than second number.
  
puts 'Hello, I\'d like to show you all the leap years between two numbers you give me. Please give me the first number.'
f = gets.chomp.to_i
puts 'Thanks! and the second number please'
s = gets.chomp.to_i
while s < f
  puts 'Your second number needs to be larger than your first number. please try again.'
  s = gets.chomp.to_i
end
puts 'List of years:'
while f <= s
  if ((f % 4 == 0) && (f % 100 != 0) || (f % 400 == 0))
    puts f.to_s
  end
  f = f.to_i + 1
end

