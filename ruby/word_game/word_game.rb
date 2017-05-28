# #BUSINESS LOGIC

class Game

  def initialize(word)
  @word = word #use this variable to take in the word from the user
  @letter_guessed #use this variable to take in guessed letter from the user
  @hidden_word #use this to store word in dash form
  @num_of_guesses = @word.length
  @guessed_already = [] #array to store letters the user has already guessed
  end
# Method to take a word and return it as “-----“, one dash for each letter in the word
  def word_hider
    @hidden_word = (@word = (@word.replace ("-"*@word.length)) )#take in word and turn into dashes
  end

# Method to check input against characters in word and print letter in string of dashes if correct. While number of guesses is less than or equal to number of characters in the string

  def guess_checker
    # check user input against characters in word
    #store letter_guessed in guessed_already array
    until # when number of guesses == @word.length, end, you lose
      if @word.include? @letter_guessed
      # print new dash string with correct letter in correct place, if letter guessed is correct
      # @num_of_guesses -= 1
      elsif #letter guessed is guessed_already, puts "you guessed that already"
      elsif #word doesn't include letter,
          # @num_of_guesses -= 1
      end
    end
  end
# Method to print congratulatory message for win, taunting message for loss
  def print_win_or_lose
    # if all letters guessed, puts "way to go!"
    # if not all letters guessed, puts "no bueno"
  end

# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.

end #class ending


# #USER LOGIC

# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
