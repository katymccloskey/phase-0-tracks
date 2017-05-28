# class Puppy

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(n)
#     bark_count = n
#     until bark_count == 0
#       puts "woof"
#       bark_count -= 1
#     end
#   end

#   def roll_over
#     puts "*rolls over*"
#   end

#   def dog_years(n)
#     puts n * 7
#   end

#   def play_dead
#     puts "lays on back quietly"
#   end

#   def initialize
#     puts "Initializing new puppy instance..."
#   end

# end

# Dash = Puppy.new

# Dash.fetch("ball")

# Dash.speak(5)

# Dash.roll_over

# Dash.dog_years(7)

# Dash.play_dead




class Songs

  def initialize
    puts "Initializing new playlist"
  end

  def play_song
    puts "First song playing!"
  end

  def repeat(n)
    song_count = n
      until song_count == 0
      puts "play song again"
      song_count -= 1
      end
  end

end

# Song1 = Songs.new

# Song1.play_song

# Song1.repeat(5)

song_array = []
loop_count = 0

until loop_count == 50
  song = Songs.new
  song_array << song
  loop_count += 1
end

p song_array

song_array.each do |title|
  song.play_song
  song.repeat(2)
end







# song_array = []
# loop_count = 0

# until loop_count == 5
#   puts "please type the  name of the song you want to hear"
#   song_title = gets.chomp
#   song_array << song_title
#   loop_count += 1
# end

# p song_array

# song_array.each do |title|
#   song_title.play_song
#   song_title.repeat(2)
# end