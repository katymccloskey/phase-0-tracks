class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(type)
    puts "That was a good #{type}!"
  end

end

# santa1 = Santa.new

# santa1.speak

# santa1.eat_milk_and_cookies("snickerdoodle")

santas = []
genders = ["agender", "female", "male"]
ethnicities = ["latina", "black", "phillipino"]

genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
  end

p santas

