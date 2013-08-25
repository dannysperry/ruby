mo = {1 => "jan", 2 => "feb", 3 => "mar", 4  => "apr",  5 => "may", 6  => "jun",
      7 => "jul", 8 => "aug", 9 => "sep", 10 => "oct", 11 => "nov", 12 => "dec"}

_31 = [1,3,5,7,8,10,12]
_30 = [4,6,9,11]


# methods -------------------------------------------------------------------------------


def ask string
  puts 'What ' + string + ' were you born?'
end

def spank (year, month, day)
  birthday = Time.local(year, month, day)
  seconds = Time.now - birthday
  years_old = seconds / 3600 / 24 / 365.25
  puts 'You get ' + years_old.floor.to_s + ' spankings!!!'
  puts "SPANK!!!\n" * years_old.floor
end


# year -------------------------------------------------------------------------------


ask "year"
year = gets.chomp
until (1875..Time.now.year).include?(year.to_i)
  puts '****                 ERROR               ****'  
  puts 'Please enter a 4 digit year between 1875 and ' + Time.now.year.to_s # => 
  year = gets.chomp
end


# month -------------------------------------------------------------------------------


ask "month"
month = gets.chomp
until mo.has_key?(month.to_i) or mo.has_value?(month.downcase[0..2])
    puts '****                 ERROR                ****'
    puts 'Please enter your birth month. "ex: 6, or Jun"'
    month = gets.chomp
end

if mo.has_value?(month.downcase[0..2])
  month = mo.key(month.downcase[0..2])
else mo.has_key?(month.to_i)
  month = month.to_i
end


# day -------------------------------------------------------------------------------


ask "day"
day = gets.chomp
until ((1..31).include?(day.to_i) and _31.include?(month.to_i)) or
      ((1..30).include?(day.to_i) and _30.include?(month.to_i)) or
      ((1..28).include?(day.to_i) and 2 == month.to_i)
    puts '****          ERROR        ****'
    puts 'Please enter a day of the month'
    day = gets.chomp
end


#results -------------------------------------------------------------------------------

spank year, month, day