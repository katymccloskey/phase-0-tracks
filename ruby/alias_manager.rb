#swap first and last name
# change vowels to next vowel in list "aeiou"
#change consonants to next consonant

 def alias_method
  puts "what is your name"
  name = gets.chomp
  str = name
  str.split(" ").reverse.join(" ").tr('aeiou', 'eioua').tr('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyzb')
 end

p alias_method