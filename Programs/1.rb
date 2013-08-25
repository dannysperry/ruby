puts 'Hello world! What is your favorite number?'
number = gets.chomp
new_number = number.to_i + 1
puts 'Might I recommend the number ' + new_number.to_s + '? It\'s bigger and better.'
