# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with: Denny Jovic.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digit integer
# Output: boolean
# Steps:
# convert integer to array of strings
# check that length of array is 16 digits
# if length is not 16, return ArgumentError
# convert strings to integers

# double every other digit
# find the even indexes

# split double digit sums

# sum digits


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard

#   def initialize(integer)
#     array1 = integer.to_s.split('')
#     array = array1.map { |string| string.to_i }
#     unless array.length == 16
#       raise ArgumentError.new("Not a valid credit card number")
#     end
#     @array = array
#   end

#   def check_card
#     @array.each_index do |i|
#       if i.even?
#         @array[i] = @array[i] * 2
#         if @array[i] >= 10
#           @array[i] = @array[i].to_s.split("").map {|dub| dub.to_i}
#         end
#       end
#     end
#     array2 = @array.flatten
#     megasum = array2.inject(0) do |sum,x|
#       sum + x
#       # if megasum % 10 == 0
#       # end
#     end
#     if megasum % 10 == 0
#       return true
#     else
#       return false
#     end

#   end

# end



# Refactored Solution

class CreditCard

  def initialize(integer)
    string_array = integer.to_s.split('')
    unless string_array.length == 16
      raise ArgumentError.new("Not a valid credit card number")
    end
    @array = string_array.map { |string| string.to_i }
  end

  def check_card
    @array.each_index do |i|
      if i.even?
        @array[i] *= 2
        if @array[i] >= 10
          @array[i] = @array[i].to_s.split("")
          @array[i] = @array[i].map {|string| string.to_i}
        end
      end
    end
    sum_array = @array.flatten
    megasum = sum_array.inject(0) {|sum,x| sum + x}
    megasum % 10 == 0
  end

end



# Reflection

# • What was the most difficult part of this challenge for you and your pair?
# The most difficult part of this challenge was figuring out how to iterate through the arrays.

# • What new methods did you find to help you when you refactored?
# The most helpful method was [flatten]. It allowed us to turn a multidimensional array into a one-dimensional array.

# • What concepts or learnings were you able to solidify in this challenge?
# Maintaining clean, readable code is important, especially when troubleshooting. It can be difficult to track down errors when your code is messy and unorganized.
