# Calculate the mode Pairing Challenge

# I worked on this challenge with: Leland Meiners

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# an array of numbers or strings

# What is the output? (i.e. What should the code return?)
#  an assorted array of the most frequent values in the argument array

# What are the steps needed to solve the problem?
# identify unique elements
# count number of occurences of each unique element
# print element(s) with greatest number of occurences


# 1. Initial Solution

# def mode(array)

#   unique_array = array.uniq

#   count_array=[]
#   i = 0
#   while i < unique_array.length
#     count_array[i] = array.count(unique_array[i])
#     i += 1
#   end

#   count_hash = Hash[unique_array.zip count_array]

#   output_hash = Hash[count_hash.select { |key,value| value == count_array.max}]

#   p output_hash.keys

# end


# 3. Refactored Solution

# def mode(array)

#   count_hash = Hash.new(0)
#   array.each do |i|
#     count_hash[i]+=1
#   end

#   max_occurence = count_hash.values.max

#   output_hash = Hash[count_hash.select { |key,value| value == max_occurence}]
#   p output_hash.keys

# end


def mode(array)

  count_hash = array.inject(Hash.new(0)) { |hash,value| hash[value] += 1; hash }

  max_occurence = count_hash.values.max

  output_hash = Hash[count_hash.select { |key,value| value == max_occurence}]
  output_hash.keys

end


# 4. Reflection

# • Which data structure did you and your pair decide to implement and why?
# We decided to use hashes during this challenge because we needed to create a collection of objects that would allow key-based value retrieval.

# • Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# I was more successful breaking this problem down into implementable pseudocode than the last with a pair. While pseudocode proved to be especially important in this challenge due to the difficulty of the material, it’s hard to write detailed pseudocode when you’re not sure what the built-in methods will allow you to do.

# • What issues/successes did you run into when translating your pseudocode to code?
# The biggest challenge was finding the right built-in methods. Learning the syntax for implementing the new methods was also a challenge, but the more familiar I become with Ruby syntax, the easier it is to learn new methods.

# • What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# We initially used a while loop and basic methods to create code that would pass the tests. One useful method I learned when writing the initial solution was zip. zip allowed us to combine two arrays into a hash. When refactoring we researched and included several very useful methods. Figuring out how to implement inject proved to be quite challenging.
