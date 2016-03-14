# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent [1] hours on this challenge.

# 0. Pseudocode

# Input: integer (indicating number of sides)
# Output: a random number
# Steps:
# create an argument error in case of invalid input
# define instance variable with input
# return instance variable
# generate random number using instance variable


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     unless sides > 1
#       raise ArgumentError.new("Only positive numbers are allowed")
#     end
#     @sides = sides
#   end

#   def sides
#     @sides
#   end

#   def roll
#     rand(@sides) + 1
#   end
# end


# 3. Refactored Solution

class Die
  def initialize(sides)
    unless sides > 1
      raise ArgumentError.new("Only positive numbers are allowed")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(@sides) + 1
  end
end


# 4. Reflection
# • What is an ArgumentError and why would you use one?
# An argument error is a message that pops up when the arguments are wrong. You would use one to alert users when they provide invalid input.

# • What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# [rand] was a new method I used to generate a random number. This exercise was not particularly challenging. It was rewarding to successfully implement an argument error for the first time.

# • What is a Ruby class?
# A ruby class is a framework for creating new objects. The attributes and behaviors of a class are defined using variables and methods respectively.

# • Why would you use a Ruby class?
# You would use a Ruby class to bind new methods to an object or type of object.

# • What is the difference between a local variable and an instance variable?
# Local variables are only accessible within the loop or method in which they are created. Instance variables are accessible within a particular instance of a class and are created within the instance. Instance variables have an “@” at the beginning of the variable name.

# • Where can an instance variable be used?
# An instance variable can be used anywhere within the instance of a class in which it is defined.
