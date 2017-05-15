
likes_garlic_bread = true
wants_insurance = true
current_year = 2017
name = true

puts "How many employees do you need to process?"
num_of_emp = gets.chomp
num_of_emp = num_of_emp.to_i

until num_of_emp == 0
  num_of_emp = num_of_emp - 1

puts "What is your name?"
name = gets.chomp
  puts "Nice to meet you, #{name}!"
if name == "Drake Cula" || name == "Tu Fang"
  name = false
else
  name = true
end

puts "How old are you?"
age = gets.chomp
age.to_i

puts "What year were you born?"
birth_year = gets.chomp
birth_year.to_i

got_age_right = current_year - (age.to_i + birth_year.to_i)

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

puts "any allergies? type done if no"
allergies = gets.chomp
until allergies == "done" || allergies == "sunshine"
  allergies = gets.chomp
end

if got_age_right == 0 && likes_garlic_bread && wants_insurance && name = true
  puts "Probably not a vampire"

elsif got_age_right >= 1 && likes_garlic_bread != true && wants_insurance != true
  puts "Almost certainly a vampire"

elsif got_age_right >= 1 && (likes_garlic_bread != true || wants_insurance != true)
  puts "Probably a vampire"

elsif name = true
  puts "Definitely a vampire"

else puts "Results inconclusive"
end

  puts "#{num_of_emp} potential vampires left!"


print "Survey results: Name: #{name}, age: #{age}, year of birth: #{birth_year} wants garlic bread: #{likes_garlic_bread}, wants insurance: #{wants_insurance}, allergies: #{allergies}."

end

print "Actually, never mind! What do these questions have to do with anything? Let's all be friends."