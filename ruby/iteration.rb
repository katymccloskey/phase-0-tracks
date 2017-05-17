#write a method that takes a block
  #method should print a status message before and after running the block

def sup_bro
  puts "This is before a block!"
  name = "Katy"
  yield(name)
  puts "This is after a block!"
end

sup_bro { |name| puts "Here is the block with a person called #{name}" }

#begin array and hash block

movie_stars = {
  "Jim Carey" => "Liar Liar",
  :brad_Pitt => "Troy",
  jennifer_Anniston: "Friends",
}

movie_stars.each { |name, movie| puts "The actor #{name} performed in #{movie}" }

dinos =  ["t-rex", "stegosaurus", "allosaurus"]

puts "First, there were dinos."
puts dinos

puts "Then, came a meteor."
dinos.map! do |target|
  "Extinct"
end

puts dinos

