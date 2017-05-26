# module Shout
#   #we'll put methods here soon
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words + "!!!" + " :D"
#   end

# end

# p Shout.yell_angrily('argh')
# p Shout.yell_happily('hurrah')

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + "!!!" + " :D"
  end
end


class Person_Whose_Flight_Got_Delayed
  include Shout
end

class Board_Game_Player
  include Shout
end

person1 = Person_Whose_Flight_Got_Delayed.new
p person1.yell_angrily("argh my flight is delayed")
p person1.yell_happily("yay finally boarding")

person2 = Board_Game_Player.new
p person2.yell_angrily("argh I'm losing!")
p person2.yell_happily("yay I won")