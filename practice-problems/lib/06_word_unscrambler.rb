def word_unscrambler(str, words)  
  words.delete_if{|x| x.split(//).sort != str.split(//).sort}
end
                    
