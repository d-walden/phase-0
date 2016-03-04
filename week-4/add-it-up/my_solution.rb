# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input:
# Output:
# Steps to solve the problem.


# 1. total initial solution

def total(num_array)

  i=1
  sum_array = num_array[0]

  while i < num_array.length
    sum_array = sum_array + num_array[i]
    i += 1
  end
  p sum_array

end

# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array
# Output: string
# Steps to solve the problem.
#
# Add indexes together with space after each words.
# Capitalize first letter of first index.
# Take out the last space at index -1
# Add period to end.


# 5. sentence_maker initial solution

def sentence_maker(sentence_array)
  final_sen = ""
  i=1
  final_sen = sentence_array[0]
  while i < sentence_array.length
    final_sen = final_sen + " " + sentence_array[i]
    i += 1
  end

  p final_sen.capitalize.+"."

end

#sentence_maker(["i", "want", "to", "go", "to", "the", "movies"])
# => "I want to go to the movies."

# 6. sentence_maker refactored solution

