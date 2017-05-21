#swap first and last name
# change vowels to next vowel in list "aeiou"
#change consonants to next consonant

def alias_method
  name = ""
  until name == "quit"
  puts "what is your name? type quit to exit"
  name = gets.chomp
    if name != "quit"
      str = name
      p str.split(" ").reverse.join(" ").tr('aeiou', 'eioua').tr('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyzb')
    break if name == "quit"
    end
  end
end


alias_method