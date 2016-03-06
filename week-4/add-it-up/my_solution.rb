# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with: Shin Wang.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array
# Output: number
# Steps to solve the problem.

# add array index to previous sum
#   output sum


# 1. total initial solution

# def total(num_array)

#   i=1
#   sum_array = num_array[0]

#   while i < num_array.length
#     sum_array = sum_array + num_array[i]
#     i += 1
#   end
#   p sum_array

# end

# 3. total refactored solution

def total(num_array)
  num_array.inject{|sum,x| sum + x }
end



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!

# Input: array
# Output: string
# Steps to solve the problem.

# Add indexes together with space after each words.
# Capitalize first letter of first index.
# Take out the last space at index -1
# Add period to end.


# 5. sentence_maker initial solution

# def sentence_maker(sentence_array)
#   final_sen = ""
#   i=1
#   final_sen = sentence_array[0]
#   while i < sentence_array.length
#     final_sen = final_sen + " " + sentence_array[i].to_s
#     i += 1
#   end

#   p final_sen.capitalize.+"."

# end

# 6. sentence_maker refactored solution

def sentence_maker(sentence_array)
  sentence_array.join(" ").capitalize.+"."
end