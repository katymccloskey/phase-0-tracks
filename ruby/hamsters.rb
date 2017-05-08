# ask user hamster's name
  #name= gets.chomp
puts "What is your hamster's name?"
name = gets.chomp


# ask user hamster's volume level on scale of 1-10
  #volume= gets.chomp
  #volume= true if <=10, false if >10

while volume != true
  puts "On a scale of 1-10, how loud is your hamster?"
  volume = gets.chomp

      if volume <= 10
        volume = true
      else volume = false
end

# ask user hamster's fur color
  # fur_color= gets.chomp
puts "What color is your hamster?"
fur_color = gets.chomp

#while good_candidate!=true
# ask user if hamster is a good candidate for adoption y/n
  # if input == "y"
    # good_candidate= true
  # elsif input =="n"
    # good_candidate= true
  # else puts "I didn't understand"
#end
while good_candidate != true
  puts "Is your hamster a good candidate for adoption? y/n"
    candidate_status = gets.chomp
  if candidate_status = y
    good_candidate = true
  else candidate_status = n
    good_candidate = true
end

#ask user hamster's estimated age
  # age=gets.chomp
  # if age is blank, age=nil
puts "What is your hamster's estimated age?"
age = gets.chomp
  if age.empty
      age = nil
  end

end

puts "Thanks!"

