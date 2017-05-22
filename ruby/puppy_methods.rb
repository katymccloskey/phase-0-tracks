class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(n)
    bark_count = n
    until bark_count == 0
      puts "woof"
      bark_count -= 1
    end
  end

  def roll_over
    puts "*rolls over*"
  end
end

Dash = Puppy.new
Dash.fetch("ball")

Dash.speak(5)

Dash.roll_over

