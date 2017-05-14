# define a method to encrypt a string
# set the index to 0
# if the index is less than the number of item in the string, keep evaluating
# replace z with a so it doesn't go to aa
# add 1 to the index after each item is evaluated
#print the str

def encrypt(str)
  index = 0
  while index < str.length
    str[index] = if str[index].include? 'z'
                  'a'
                 else
                  str[index].next
                 end
    index += 1
  end
  str
end

# encrypt("abc")

#create a method to decrypt a str
# set index to 0
# while index is less than str length, continue evaluating
# create str of alphabet to reference back to
# index the str to refer to the alphabet index

def decrypt(str)
  index = 0
  while index < str.length
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    str[index] = alphabet[alphabet.index(str[index]) - 1]
    index += 1
  end
  str
end

# decrypt("bcd")
# decrypt(encrypt("swordfish"))

puts "Would you like to encrypt or decrypt a password?"
  choice = gets.chomp
  until choice == "encrypt" || choice == "decrypt"
    puts "I didn't understand you."
    choice = gets.chomp
  end

puts "What is your password?"
  password = gets.chomp
  if choice == "encrypt"
    puts encrypt(password)
  elsif choice == "decrypt"
    puts decrypt(password)
  end # string=user input
#