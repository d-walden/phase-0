# Pad an Array

# I worked on this challenge with: Scott Southard

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# input: array
# output: padded array

# create a array (padded_array) that's the length of the difference between input array and output array

# add pad element to each slot of padded_array

# for destructive method: concatenate input_array and padded_array

# for non-destructive method: add arrays



# 1. Initial Solution
# def pad!(input_array, output_length, pad = nil)
#   new_length = output_length - input_array.length

#   if new_length > 0
#     padded_array = Array.new(new_length, pad)
#     p input_array.concat(padded_array)
#   end
#   p input_array

# end


# def pad(input_array, output_length, pad = nil)
#   new_length = output_length - input_array.length

#   if new_length > 0
#     padded_array = Array.new(new_length, pad)
#     output_array = input_array + padded_array
#     p output_array

#   else
#     p input_array.dup
#   end
# end



# 3. Refactored Solution

def pad!(input_array, output_length, pad = nil)
  new_length = output_length - input_array.length

  if new_length > 0
    padded_array = Array.new(new_length, pad)
    input_array.concat(padded_array)
  end
  input_array

end


def pad(input_array, output_length, pad = nil)
  new_length = output_length - input_array.length

  if new_length > 0
    padded_array = Array.new(new_length, pad)
    input_array + padded_array
  else
    input_array.dup
  end

end



# 4. Reflection

=begin

• Were you successful in breaking the problem down into small steps?

The pseudocode allowed us to successfully break the problem down into small steps.

• Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

We were able to easily translate the pseudocode into working code. We made it through the challenge quickly and efficiently. There was one error that we struggled with for a while. The RSpec expected our code to return an array with a different ID number than the input array. Sometimes the two arrays had the same ID so we ended up using the .dup method to create a duplicate array with a different ID.

• Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

Our initial solution was not entirely successful. Most of our mistakes were related to syntax and were easily fixed.

• When you refactored, did you find any existing methods in Ruby to clean up your code?

We already had clean and efficient code that utilized all the appropriate methods. We made few changes when refactoring.

• How readable is your solution? Did you and your pair choose descriptive variable names?

Our solution is very readable. We used descriptive variables names.

• What is the difference between destructive and non-destructive methods in your own words?

Destructive methods change the object on which they’re called, while non-destructive methods leave the object unchanged.

=end