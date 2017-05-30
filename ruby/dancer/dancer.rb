class Dancer
  attr_accessor :name, :age

  def initialize (name, age)
    @name = name
    @age = age
  end

  def pirouette
    "*twirls*"
  end

  def bow
    "*bows*"
  end

end