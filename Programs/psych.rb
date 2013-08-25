def ask question
  puts question
  reply = gets.chomp.downcase
  
  if reply == 'yes'
    true
  elsif reply == 'no'
    false
  else
    puts 'Please answer "yes" or "no".'
    ask question
  end
end

main = ask 'Do you wet the bed?'
ask 'Are you 3?'
ask 'Do you have a dog?'
ask 'Is your dog a boy?'

if main == true
  puts 'You\'re still a baby!'
else
  puts 'Wow you\'re growing up so fast!'
end