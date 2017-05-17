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


#use documentation to find other array and hash methods that take blocks

numbers = [ 1, 3, 5, 10, 20 ]

# example array modifiers

#puts numbers.delete_if { |numbers| numbers < 10}

#puts numbers.keep_if { |numbers| numbers < 5}

# example hash modifiers

letternum = {
  a: 1,
  b: 2,
  c: 3,
  d: 4
}

#puts letternum.fetch(:a)

puts letternum.reject { |letter, value| value < 3 }