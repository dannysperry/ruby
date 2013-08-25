def ordered_vowels?(str)
  str = str.scan(/[aeiou]/)
  str.sort == str
end

def ordered_vowel_words(str)
  str.split.delete_if {|str| ordered_vowels?(str) == false}.join(' ')
end                                                                