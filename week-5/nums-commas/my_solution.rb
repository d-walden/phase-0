# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.


# 0. Pseudocode

# What is the input?
# an integer
# What is the output? (i.e. What should the code return?)
# a string with every three characters separated by a comma
# What are the steps needed to solve the problem?
  # convert integer to string
  # IF length of string is greater than 3
    # separate string into array
    # add comma to every third value from the end
    # combine array into string
    # return string
  # ELSE
   # return string


# 1. Initial Solution

# def separate_comma(integer)

#   string = integer.to_s
#   if string.length > 3
#     array = string.split("")
#     i = (string.length - 4)
#     while i >= 0
#       array[i] += ","
#       i -= 3
#     end
#     array.join
#   else
#     string
#   end

# end


# 2. Refactored Solution

def separate_comma(integer)

  string = integer.to_s
  if string.length > 3
    array = string.split("")
    i = (string.length - 3)
    while i > 0
      array.insert(i, ",")
      i -= 3
    end
    array.join
  else
    string
  end

end


# # 3. Reflection

# • What was your process for breaking the problem down? What different approaches did you consider?
# I started by identifying the intended input and output. Then I wrote the steps needed to solve the problem. First I converted the input into the appropriate object, and then I applied the necessary methods. I considered manipulating the fixnum and returning it as a string at the end, but I didn’t know any buil-in methods that would allow me to do this.

# • Was your pseudocode effective in helping you build a successful initial solution?
# The pseudocode was very effective in helping me build a successful initial solution. It aided me in taking a sequential approach to solving the problem.

# • What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# I used the [insert] method when refactoring my solution. It wasn’t difficult to find it in the Ruby Docs. This method is simple enough that learning how to implement it wasn’t a problem. Often, however, the limited examples in the Ruby Docs make it difficult to learn how to apply new methods. Using [insert] did not significantly change the was my code works, but it does make it easier to read.

# • How did you initially iterate through the data structure?
# I initially iterate through the data structure using a while loop. Normally I would use [each] or [map], but since I was skipping elements in the array I found using a while loop to be more straightforward.

# • Do you feel your refactored solution is more readable than your initial solution? Why?
# I do believe that my refactored solution is more readable. The name of the new method I used helps identify what my code is doing.
