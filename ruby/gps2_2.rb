# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def create_list(str)
  grocery_list = {}
  list_arr = str.split(" ")
    list_arr.each do |item|
    grocery_list[item] = 0
  end
  grocery_list
end



# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: define method that takes the 3 parameters above
# move item name and quantity of that item to the list
# output:hash


def add_item(list, item, quant = 0)
  list[item] = quant
  list
end

def remove_item(list, item)
  list.delete(item)
  list
end

def update_quantity(list, item, quantity)
  list[item] = quantity
  print pretty_list(list)
end

def pretty_list(list)
  list.each_with_index do |item, index|
    puts "#{index +1}: #{item}"
  end
end

grocery_list = create_list("zuchinni, eggs, butter")

p add_item(grocery_list, "bacon", 4)

update_quantity(grocery_list, "eggs", 12)

p pretty_list(grocery_list)
#p grocery_list.pretty_list


#p add_item(grocery_list, "bacon", 4)

#p remove_item(grocery_list, "eggs")
#grocery_list = {}

#grocery_list.add_item(new_list, "banana", 4)
#grocery_list.add_item(grocery_list, "banana", 4)


# Method to remove an item from the list
# input:list, item
# steps: define the method that takes 2 parameters
#remove item form the list
# output:hash


# Method to update the quantity of an item
# input:list, item
# steps: define method with that takes list and item parameters
#update quantity based on the key
# output: hash


# Method to print a list and make it look pretty
# input: list
# steps:define method that takes the list as a parameter
#setup a loop to run through the whole hash
#inside the loop print each key/ Value pair in pretty fashion
# output:strings
