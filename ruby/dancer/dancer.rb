class Dancer
  attr_accessor :name, :age, :tutu, :card

  def initialize (name, age, tutu)
    @name = name
    @age = age
    @tutu = tutu #this is the feature I added
    @card = []
  end

  def pirouette
    "*twirls*"
  end

  def bow
    "*bows*"
  end

  def card
    @card
  end

  def queue_dance_with(name)
    card << name
  end

  def begin_next_dance
    while card.length > 0
      card.each do |name|
        card.delete name
        p "Now dancing with #{name}."
        p card
      end
    end
  end
  #So, when I test this method, the return value of the rspec test that should be "Now dancing with Mikhail Baryshnikov" is returning "nil." When I test the code in the repl, it seems to perform as it should- it adds the names to the array, then goes through the names and says "Now dancing with (first dance)", then prints the updated array with the first dance name taken off, then says "Now dancing with (second dance)", and then returns the empty array, as it has iterated through and removed the names after. I think I'm having a problem with what is being returned. Will keep looking at it but want to make sure I don't miss the submission deadline! This note is mostly so that when we review the code later I can make sure and ask about return values if I haven't figured it out by then :)
end

dancer = Dancer.new("Misty Copeland", 33, "pink")

p dancer.queue_dance_with("Mikhail Baryshnikov")
p dancer.queue_dance_with("Anna Pavlova")
dancer.begin_next_dance