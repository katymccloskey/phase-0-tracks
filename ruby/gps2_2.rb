# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def create_list(str)
  list_hash = {}
  list_arr = str.split(" ")
    list_arr.each do |item|
    list_hash[item] = 0
  end
  list_hash
end

str = ("zuchinni, eggs, butter")
p grocery_list = create_list(str)

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: define method that takes the 3 parameters above
# move item name and quantity of that item to the list
# output:hash

def add_item(list, item, quant)
  grocery_list = {}
  groc_array = item, quant
  groc_array.each do |item, quant|
    grocery_list[item] << quant
  end
  grocery_list
end

grocery_list = {}
item = "potato"
quant = "4"
p grocery_list = add_item(grocery_list, item, quant)

# Method to remove an item from the list
# input:list, item
# steps: define the method that takes 2 parameters
#remove item form the list
# output:hash
def delete_item
  #delete item from the list
end


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
