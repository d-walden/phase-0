# Your Names
# 1) Traci Fong
# 2) David Walden

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

# input: 2 integers
# output: string with integer

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

#establishing a hash of items and number of ingredients
#establish an error at three (integer)
  unless library.include?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
#iterates through the hash and compares if the item_to_make(key) is in the hash the error counter goes down one.
#if the error_counter is greater than 0, raise an argument that the item_to_make is not a valid input.

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
  #serving_size equals the first value associated with desired library key.
  #remaining_ingredients equeals the remainder of num_of_ingredients divided by serving_size

  if remaining_ingredients == 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
  #WHEN remaining_ingredients equals zero return string 1 ELSE return string 2

end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)



 # Reflection
# • What did you learn about making code readable by working on this challenge?
# I learned that having descriptive variable names is important to creating readable code.

# • Did you learn any new methods? What did you learn about them?
# I learned how to use the [include?] method. This can be used to check weather an object contains a certain item.

# • What did you learn about accessing data in hashes?
# I learned that you can access data in a hash by providing the appropriate key.

# • What concepts were solidified when working through this challenge?
# I learned that reading and understanding other people’s code can be quite challenging. This exercise showed how important it is to write clean, readable code. Breaking this problem down required many of the same skills used in pseudocoding.
