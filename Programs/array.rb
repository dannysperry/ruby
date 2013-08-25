family = ["Papa", "Mama", "Ruby", "Nono", "Emma"]

puts 'What would you like to ask C to do?'
question = gets.chomp
puts 'You say, "C, please #{question}"'
puts 'C\'s response:'

family.each do |member|
    puts "#{member} #{question}, too.' "
end