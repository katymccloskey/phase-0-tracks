class Santa

  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    # @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0


  end

  # def speak
  #   puts "Ho, ho ho! Haaaappy holidays!"
  # end

  # def eat_milk_and_cookies(type)
  #   puts "That was a good #{type}!"
  # end

  # def celebrate_birthday
  #   @age = @age + 1 #age Santa by one year
  #   p "#{@age}"
  # end

  # def get_mad_at(name)
  #   @reindeer_ranking.insert(8, @reindeer_ranking.delete_at(@reindeer_ranking.index(name)))
  # end
end

# santa1 = Santa.new("female", "latina")

# p santa1.gender=("duno")

# santa1.speak

# santa1.eat_milk_and_cookies("snickerdoodle")

santas = []

# genders.length.times do |i|
#  santas << Santa.new(genders[i], ethnicities[i])
#   end

#create loop to make 50 santas
#give each santa a random gender and ethnicity
#give each santa a random age between 1-140


gender = ["agender", "female", "male"]
ethnicities = ["latina", "black", "phillipino"]
random_age = (1..140).to_a

loop_count = 0
until loop_count == 50
  new_santa = Santa.new(gender, ethnicities)
  santas << new_santa
    puts ("#{gender.sample}, #{ethnicities.sample}, #{random_age.sample}")
  loop_count += 1


end