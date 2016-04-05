# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode
# IF all elements in one row equal x, print "BINGO!"
# ELSIF all elements in one column equal x, print "BINGO!"
# ELSIF all elements in diagonal 1 equal x, print "BINGO!"
# ELSIF all elements in diagonal 2 equal x, print "BINGO!"
# ELSE return false



# sample boards

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]




# Initial Solution
# class BingoScorer

#   def initialize(board)
#     @board = board
#   end

#   def check_horizontal
#     @board.each do |array|
#       string = array.join
#       if string == 'xxxxx'
#         p "BINGO!"
#       end
#     end
#   end

#   def check_vertical
#     counter = 0
#     while counter < 5
#       string = []
#       @board.each do |array|
#         string.push(array[counter])
#       end
#       if string.join == 'xxxxx'
#         p "BINGO!"
#       end
#       counter += 1
#     end
#   end

#   def check_diagonal1
#     string = []
#     @board.each_index do |index|
#       string[index] = @board[index][index]
#     end
#     if string.join == 'xxxxx'
#         p "BINGO!"
#     end
#   end

#   def check_diagonal2
#     string = []
#     @board.each_index do |index|
#       string[index] = @board[index][4-index]
#     end
#     puts string.join
#     if string.join == 'xxxxx'
#         p "BINGO!"
#     end
#   end

#   def check_all
#     check_horizontal
#     check_vertical
#     check_diagonal1
#     check_diagonal2
#   end

# end

# test_board = BingoScorer.new(left_to_right)
# test_board.check_all


# Refactored Solution
class BingoScorer

  def initialize(board)
    @board = board
  end

  def check
    @board.each do |array|
      string = array.join
      if string == 'xxxxx'
        p "BINGO!"
      end
    end

    counter = 0
    while counter < 5
      string = []
      @board.each do |array|
        string.push(array[counter])
      end
      if string.join == 'xxxxx'
        p "BINGO!"
      end
      counter += 1
    end

    string = []
    @board.each_index do |index|
      string[index] = @board[index][index]
    end
    if string.join == 'xxxxx'
        p "BINGO!"
    end

    string = []
    @board.each_index do |index|
      string[index] = @board[index][4-index]
    end
    puts string.join
    if string.join == 'xxxxx'
        p "BINGO!"
    end

  end

end



# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:
test_board = BingoScorer.new(left_to_right)
test_board.check



# Reflection
# • What concepts did you review or learn in this challenge?
# I reviewed the concept of creating a class containing multiple methods.

# • What is still confusing to you about Ruby?
# Iterating can still be a bit tricky, but this review exercise helped me become more comfortable with the process.

# • What are you going to study to get more prepared for Phase 1?
# I’m going to spend time researching new ruby methods and complete some additional review exercises.
