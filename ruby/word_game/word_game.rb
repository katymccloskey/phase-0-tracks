# #BUSINESS LOGIC

class Game
attr_accessor :letter_guessed, :hidden_word, :word

  def initialize(word)
    @word = word
    @letter_guessed
    @hidden_word = "-"*@word.length
  end

  def guess_checker(letter)
    @word.split('').each_with_index do |char, index|
      if letter == char
        @hidden_word[index] = letter
        puts "progress: #{@hidden_word}"
      end
    end
  end

end #class ending

puts "enter a word"
word_to_guess = gets.chomp

word1 = Game.new(word_to_guess)

num_of_guesses = 0
guessed_already = []

until num_of_guesses == word_to_guess.length + 1
  puts "guess a letter"
  letter_guessed = gets.chomp
  word1.guess_checker(letter_guessed)

  if guessed_already.include? letter_guessed
    puts "you guessed that already, dumbdumb"
  elsif word_to_guess.include? letter_guessed
    puts "good job!"
    num_of_guesses += 1
  elsif !guessed_already.include? letter_guessed
    puts "try again, dumbdumb"
    num_of_guesses += 1

  end

  guessed_already << letter_guessed

end


