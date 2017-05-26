module Shout
  #we'll put methods here soon
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!!!" + " :D"
  end

end

p Shout.yell_angrily('argh')
p Shout.yell_happily('hurrah')

