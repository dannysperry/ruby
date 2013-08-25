puts 'This is your grandmother, say something to her.'
bye = 0
while bye < 3
  year = (rand(21)) + 1930
  response = gets.chomp
  if response == 'BYE'.chomp && bye != 2
    puts '...'
    bye += 1
  elsif response == 'BYE'.chomp && bye == 2
    puts "Fine! Go have your fun!"
    bye += 1
  elsif response != response.upcase
    puts 'HUH? SPEAK UP, SONNY!'
    bye = 0
  elsif response == response.upcase
    puts 'NO, NOT SINCE ' + year.to_s
    bye = 0
  end
end