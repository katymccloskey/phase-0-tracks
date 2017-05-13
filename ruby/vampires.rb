got_age_right= true
likes_garlic_bread = true
wants_insurance = true
name = true

puts "What is your name?"
name = gets.chomp
  puts "Nice to meet you, #{name}!"



puts "How old are you?"
age = gets.chomp

puts "What year were you born?"
birth_year = gets.chomp

puts "Our cafeteria serves garlic bread. Should we order some for you? y/n"

likes_garlic_bread = gets.chomp

if likes_garlic_bread == "y"
  puts "Good choice! I'll order some for you."
  likes_garlic_bread = true
else
  puts "Hmm."
  likes_garlic_bread = false
end

puts "Would you like to enroll in the company's health insurance? y/n"

wants_insurance = gets.chomp

if wants_insurance == "y"
  puts "Ok, I'll enroll you."
  wants_insurance = true
else
  puts "Hmm."
  wants_insurance = false
end


if name == "Drake Cula"
  puts "Definitely a vampire"

elsif name == "Tu Fang"
  puts "Definitely a vampire"

elsif likes_garlic_bread && wants_insurance
  puts "Probably not a vampire"

elsif likes_garlic_bread != true || wants_insurance != true
  puts "Probably a vampire"

elsif likes_garlic_bread != true && wants_insurance != true
  puts "Almost certainly a vampire"
end

# check other repl