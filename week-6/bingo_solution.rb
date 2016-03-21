# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
    # randomly generate a number (R) between 0 and 4
    # set letter variable equal to letter using conditional (ternary operator)
    # randomly generate number 1-100 (N)

# Check the called column for the number called.
  #fill in the outline here
    # use the randomly generated number (R) from previous method to check subarrays for number from 1-100 (N)

# If the number is in the column, replace with an 'x'
  #fill in the outline here
    # if the number matches, equate array value to 'X'

# Display a column to the console
  #fill in the outline here
    # print values of subarray that correspond to designated index

# Display the board to the console (prettily)
  #fill in the outline here
    # print each subarray on a new line

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call
#     # @r_num = rand(5)
#     @r_num = 3
#     if @r_num==0
#       @letter = "B"
#     elsif @r_num==1
#       @letter = "I"
#     elsif @r_num==2
#       @letter = "N"
#     elsif @r_num==3
#       @letter = "G"
#     else
#       @letter = "O"
#     end
#     @number = 65
#     # @number = rand(100) + 1
#     p "#{@letter}, #{@number}"
#   end

#   def check
#     @bingo_board.each do |subarray|
#       if subarray[@r_num] == @number
#         subarray[@r_num] = 'X'
#       end
#     end
#     @bingo_board.each do |subarray|
#       p subarray
#     end
#   end

# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @r_num = rand(5)
    @letter = @r_num==0 ? "B" : @r_num==1 ? "I" : @r_num==2 ? "N" : @r_num==3 ? "G" : "O"
    @number = rand(100) + 1
    p "#{@letter}, #{@number}"
  end

  def check
    @bingo_board.each do |subarray|
      if subarray[@r_num] == @number
        subarray[@r_num] = 'X'
      end
    end
    @bingo_board.each { |subarray| p subarray }
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.call
new_game.check


#Reflection

# • How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# Pseudocoding this challenge was not too difficult. It helped to start with a rough outline. I think I have a good pseudocoding style, but I could improve by being more specific and breaking the problems down into even smaller steps.

# • What are the benefits of using a class for this challenge?
# Using a class for this challenge allowed us to create new methods associated with a desired object.

# • How can you access coordinates in a nested array?
# You can access coordinates in a nested array by identifying the appropriate indexes in the correct order.

# • What methods did you use to access and modify the array?
# I iterated through the array using the #.each method, and modified array values using the = format.

# • Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# The ternary operator allows us to more efficiently consolidate our conditional statements. It is called by using “?” and “:”. The number of operators required depends on the number of conditional statement we want to use.

# • How did you determine what should be an instance variable versus a local variable?
# If I needed to access the variable in multiple methods within the class, I used an instance variable. If I only needed to access the variable within a single class, I used a local variable.

# • What do you feel is most improved in your refactored solution?
# I think my refactored solution is more concise and efficient than the initial solution.
