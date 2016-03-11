# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # break string into array
  # create an empty hash
  # iterate through array to define keys of hash
  # set default value(quantity) to 1
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: list(hash), item name(string), optional quantity(integer)
# steps: set string equal to integer in hash
# output: updated_list(hash)

# Method to remove an item from the list
# input: list(hash), item name(string)
# steps: delete key value
# output: updated list (hash)

# Method to update the quantity of an item
# input: list (hash), item (string), quantity (integer)
# steps: set string equal to integer in hash
# output: updated list (hash)

# Method to print a list and make it look pretty
# input: list(hash)
# steps: print item and quantity on separate lines
# output: print string

def create_list(items)
  item_array = items.split(" ")
  list_hash = {}
  item_array.each do |item|
    list_hash[item]=1
  end
  list_hash
end

def add_item(list_hash,item,quantity)
  list_hash[item]=quantity
  list_hash
end

def remove_item(list_hash,item)
  list_hash.delete(item)
  list_hash
end

def update_quantity(list_hash, item, quantity)
  add_item(list_hash,item,quantity)
end

def print_list(list_hash)
  list_hash.each do |item, quantity|
    puts "#{item}, #{quantity}"
  end
end


example = "carrots apples cereal pizza"
list1 = create_list(example)

add_item(list1, "Lemonade", 2)
add_item(list1, "Tomatoes", 3)
add_item(list1, "Onions", 1)
add_item(list1, "Ice Cream", 4)

remove_item(list1,"Lemonade")

remove_item(list1,"Lemonade")

update_quantity(list1, "Ice Cream", 1)

print_list(list1)


=begin

Reflection

• What did you learn about pseudocode from working on this challenge?
I learned how to use pseudocode more effectively. Defining the proper input and output is important to creating a functional method.

• What are the tradeoffs of using Arrays and Hashes for this challenge?
Arrays are simpler to work with but hashes are more versatile. I decided to use hashes during this challenge because I needed to create a collection of objects that would allow key-based value retrieval.

• What does a method return?
A method returns the result of the last evaluated expression unless an explicit return comes before.

• What kind of things can you pass into methods as arguments?
You can pass in any objects that correspond to the parameters of the method.

• How can you pass information between methods?
You can pass information between methods by using the output of one method as the input of another.

• What concepts were solidified in this challenge, and what concepts are still confusing?
This challenge helped me develop and strengthen my pseudocoding skills. Ruby syntax and the process of looking up new methods with the Ruby Docs are still a bit challenging for me.

=end