# HOUSE MAKER

# Allow the user to create a house,
# then add rooms,
# then add items

# House can have up to 5 rooms
# Room can have unlimited number of items


# BUSINESS LOGIC

def add_room_to_house!(house, room_name)
  return false if house.keys.length == 5
  house[room_name] = []
  return true

end

def add_item_to_room!(house, room_name, item_name)
  house[room_name] << item_name
end

house = {}

# USER INTERFACE

def print_house(house)
  puts "----------"
  puts "Current house configuration:"
  house.keys.each_with_index do |room_name, index|
    puts "#{index} -
  #{room_name}: #{house[room_name]}"
  end
    puts "----------"
end




# Let the user add rooms
can_add_rooms = true

# Stop loop when rooms cannot be added
while can_add_rooms
  # Get a room name from the user
  puts "Type the name of a room to add (or type 'done')"
  room_name = gets.chomp

  # If user is done, stop loop
  break if room_name == 'done'

  # Otherwise, add room to the house
  can_add_rooms = add_room_to_house!(house, room_name)
  print_house(house)
end

# Let the user add items to room
# In an infinite loop
loop do
  # Ask user for the number of the room they want to add items to
  puts "Enter the number of the room to add an item to (or type 'done'):"
  inputted_index = gets.chomp
  # If the user is done, break
  break if inputted_index == 'done'
  # Otherwise, add item to room
  room_index = inputted_index.to_i
  puts "Enter the item to add:"
  item_to_add = gets.chomp
  add_item_to_room!(house, house.keys[room_index], item_to_add)
  #Print the new house config
  print_house(house)
end


# TEST CODE

# rooms = ["living room", "bedroom", "bathroom", "kitchen"]

# rooms.each do |room|
#   room_added = add_room_to_house!(house, room)
#   add_item_to_room!(house, room, "cat") if room_added
# end



# print_house(house)

