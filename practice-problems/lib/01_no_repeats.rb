def no_repeat?(year)
  year.to_s.chars.to_a.uniq.length == year.to_s.length
end

def no_repeats(year_start, year_end)
  no_repeats = []
  (year_start..year_end).each do |x|
     no_repeats << x if no_repeat?(x)
  end            
  no_repeats
end  
   
no_repeat?(1980) # => true

no_repeats(1980, 1987) # => [1980, 1982, 1983, 1984, 1985, 1986, 1987]
