def letter_count(str)
  occurances = {} 
  arr = str.gsub(/ /, '').split(//)
  arr.each { |letter| occurances[letter] = arr.count(letter)}
  occurances
end        
