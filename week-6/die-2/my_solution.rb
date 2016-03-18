# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: array of strings
# Output: random string
# Steps:
# create an argument error in case of invalid input
# define instance variable with input
# define and return number of sides based on input
# return random string from instance variable



# Initial Solution

# class Die
#   def initialize(labels)
#     unless labels.length > 0
#       raise ArgumentError.new("Only nonempty arrays are allowed")
#     end
#     @labels = labels
#   end

#   def sides
#     @sides = @labels.length
#   end

#   def roll
#     index = rand(@sides)
#     @labels.shuffle[index]
#   end
# end



# Refactored Solution

class Die
  def initialize(labels)
    unless labels.length > 0
      raise ArgumentError.new("Only nonempty arrays are allowed")
    end
    @labels = labels
  end

  def sides
    @labels.length
  end

  def roll
    @labels.sample
  end
end



# Reflection
# • What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# The implementation of this die class and the last one was similar. I did not need to change much logic to get this to work.

# • What does this exercise teach you about making code that is easily changeable or modifiable?
# Making code that is easily modifiable is very important, especially in the long run. Reusing old code is much more convenient and efficient than starting from scratch.

# • What new methods did you learn when working on this challenge, if any?
# I learned about the [sample] method when refactoring. This method chooses a random element (or elements) from an array. It allowed me to reduce the length and complexity of my initial solution.

# • What concepts about classes were you able to solidify in this challenge?
# A Ruby class is a framework for creating new objects. The attributes and behaviors of a class are defined using variables and methods respectively. Ruby classes are used to bind new methods to objects or types of objects.
