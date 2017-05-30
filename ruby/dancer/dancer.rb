class Dancer
  attr_accessor :name, :age, :tutu

  def initialize (name, age, tutu)
    @name = name
    @age = age
    @tutu = tutu
  end

  def pirouette
    "*twirls*"
  end

  def bow
    "*bows*"
  end

end