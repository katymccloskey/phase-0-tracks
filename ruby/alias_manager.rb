#swap first and last name
# change vowels to next vowel in list "aeiou"
#change consonants to next consonant

def alias_method
  name = ""
  name_2 = ""
  until name == "quit"
  puts "what is your name? type quit to exit"
  alias_name = {
    :name_1 => name_2
  }
  name = gets.chomp
    if name != "quit"
      alias_name[:name_1] = name
      name_2 = name.split(" ").reverse.join(" ").tr('aeiou', 'eioua').tr('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyzb')
    break if name == "quit"
    end
  end
  alias_name.each do |name_1, name_2|
    p "#{name_1} is actually #{name_2}!"
  end
end

alias_method