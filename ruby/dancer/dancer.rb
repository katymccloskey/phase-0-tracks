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

  end

end

