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
  attr_reader :name
  def initialize
    @name = "David"
  end
end

class Greetings
  def initialize
    @my_name = NameData.new
  end

  def hello
    puts "Hello #{@my_name.name}! How wonderful to see you today."
  end
end


greet = Greetings.new
greet.hello # puts "Hello Student! How wonderful to see you today."


# Reflection

# • What are these methods doing?
# These methods are assigning values to the instance variables, printing the instance variables, changing the instance variables, and printing them again.

# • How are they modifying or returning the value of instance variables?
# They are modifying the value of the instance variables using the = format.



# • What changed between the last release and this release?
# The #.what_is_age method was replaced by the #.age method which returns the value of @age. The #.age method was created with the attr_reader method.

# • What was replaced?
# The #.what_is_age method was replaced by the #.age method.

# • Is this code simpler than the last?
# This code is simpler than the last because it doesn’t need to define the #.what_is_age method.



# • What changed between the last release and this release?
# This release uses attr_writer to allow us to change the value of the age variable.

# • What was replaced?
# The #.change_my_age method was replaced by the #.age method.

# • Is this code simpler than the last?
# This code is simpler than the last because it doesn’t need to define the #.change_my_age method.



# • What is a reader method?
# A reader method returns a value or state outside of the class, but it does not change it. Here is an example of the code that reader methods replace:
# def age
#   @ age
# end

# • What is a writer method?
# A writer method changes the value of the variable outside of the class, but it is not readable. Here is an example of the code that writer methods replace:
# def age=(age)
#   @age = age
# end

# • What do the attr methods do for you?
# attr methods allow classes to communicate data kept in instance variables.

# • Should you always use an accessor to cover your bases? Why or why not?
# You should avoid using an accessor when possible because having all instance variables changeable when you only need to read or write could lead to difficult debugging problems.

# • What is confusing to you about these methods?
# Sometimes it’s difficult to determine where you need to place the appropriate attr method.
