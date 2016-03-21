#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: no input
# Output: string
# Steps:
# - create method to return my name
# - create a method to initialize @name variable
# - create method to display salutation

# class NameData
#   def my_name
#     return "David"
#   end
# end


# class Greetings
#   def initialize
#     @name = NameData.new
#   end

#   def hello
#     puts "Hello #{@name.my_name}! How wonderful to see you today."
#   end
# end


# Refactor
class NameData
  attr_accessor :name
  def initialize
    @name = "David"
  end
end


class Greetings
  attr_accessor :name
  def initialize2
    @my_name = NameData.new
  end

  def hello
    puts "Hello #{@my_name.name}! How wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello # puts "Hello Student! How wonderful to see you today."


# Reflection

