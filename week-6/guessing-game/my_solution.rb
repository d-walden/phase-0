# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: integer
# Output: boolean or symbol
# Steps:
# define instance variable with input (answer)
# define instance variable with input (guess)
# compare guess to input
#   return ":low" if guess is low
#   return ":high" if guess is high
#   return ":correct" if guess is correct
# compare guess to input
#   return true if true
#   return false if false



# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#   end

#   def guess(number)
#     @number = number
#     if @number < @answer
#       p :low
#     elsif @number > @answer
#       p :high
#     else
#       p :correct
#     end
#   end

#   def solved?
#     @number == @answer
#   end
# end



# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(number)
    @number = number
    p @number < @answer ? :low : @number > @answer ? :high : :correct
  end

  def solved?
    @number == @answer
  end
end



# Reflection
# • How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# Instance variables are accessible within a particular instance of a class and are created within the instance. All methods defined within a class have access to the instance variables of that class. Instance variables represent the attributes of real-world objects, while methods describe the behaviors.

# • When should you use instance variables? What do they do for you?
# An instance variable can be used anywhere within the instance of a class in which they are defined. Instance variables have an “@” at the beginning of the variable name. They allow us to use the same variable across multiple methods within a class.

# • Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# We use flow control to define what the method will return based on the user input. Different input will initialize different return values as determined by the conditional statements (such as IF, ELSIF and ELSE). I did not have any trouble using flow control in this challenge.

# • Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# This code requires us to return symbols because it wants us to point to certain objects without changing them. Symbols are immutable and allow us to call a unique object without altering it.
