#write a method that takes a block
  #method should print a status message before and after running the block

def sup_bro
  puts "This is before a block!"
  name = "Katy"
  yield(name)
  puts "This is after a block!"
end

sup_bro { |name| puts "Here is the block with a person called #{name}" }