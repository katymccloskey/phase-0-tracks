design_info = {
  :name => "",
  :age => "",
  :num_of_kids => ""
}

#tell designer we will collect information
puts "Welcome! We'll be inputting your client info."
#ask for the clients:
    # name
    # age
    # number of children
    # decor theme

puts "What is your name?"
  name = gets.chomp
  design_info[:name] = name

puts "How old is your client?"
  age = gets.chomp
  design_info[:age] = age

puts "How many children?"
  num_of_kids = gets.chomp
  design_info[:num_of_kids] = num_of_kids

puts "What theme would you like for decor?"
  decor_theme = gets.chomp
  design_info[decor_theme] = decor_theme

#ask designer if they need to update a key
puts "Need to change anything?"
  change = gets.chomp
  if
    change == "name"
    puts "type name"
    name_2 = gets.chomp
    design_info[:name] = name_2
  elsif
    change == "age"
    puts "type age"
    age_2 = gets.chomp
    design_info[:age] = age_2
  elsif
    change == "number of children"
    puts "type number of children"
    num_of_kids_2 = gets.chomp
    design_info[:num_of_kids] = num_of_kids_2
  elsif
    change == "decor theme"
    puts "type new theme"
    decor_theme_2 = gets.chomp
    design_info[:decor_theme] = decor_theme_2
  elsif
    change == "none"
  end
  # if they say none, skip it
  # if they enter a key (like decor_theme), ask for a new value and udpate the :decor_theme key

#print the hash and exit the program
p design_info