
=begin
pseudocode
input: string of items separated by commas
steps: break string into array
       randomize elements of array
       measure length of array
       create an empty hash
       iterate through array to define keys of hash
       set values of hash equal to arrays of people (4-5)
output: hash of accountability groups
=end

# def groups(names)
#   name_array = names.split(", ")
#   # puts name_array.length
#   groups_hash = {}
#   i = 0
#   if name_array.length % 5 == 0
#     while i < (name_array.length / 5)
#       groups_hash["Group #{i+1}"] = name_array[i*5, 5]
#       i += 1
#     end
#   elsif name_array.length % 4 == 0
#     while i < (name_array.length / 4)
#       groups_hash["Group #{i+1}"] = name_array[i*4, 4]
#       i += 1
#     end
#   else
#     extra_length = name_array.length % 4
#     # extra_array = name_array[name_array.length-extra_length, extra_length]
#     while i < extra_length
#       groups_hash["Group #{i+1}"] = name_array[i*5, 5]
#       i += 1
#     end
#     j = extra_length
#     while j < (name_array.length / 4)
#       groups_hash["Group #{j+1}"] = name_array[j*4+extra_length, 4]
#       j += 1
#     end
#   end

#   groups_hash

# end


# Refactor
def groups(names)
  name_array = names.split(", ")
  name_array.shuffle!
  groups_hash = {}
  i = 0
  extra_length = name_array.length % 4
  while i < extra_length
    groups_hash["Group #{i+1}"] = name_array[i*5, 5]
    i += 1
  end
  while i < (name_array.length / 4)
    groups_hash["Group #{i+1}"] = name_array[i*4+extra_length, 4]
    i += 1
  end

  groups_hash

end


names12 = "Aarthi Gurusami, Abid Ramay, Adam Zmudzinski, Alec Hendrickson, Alex Wen, Alicia Briceland, Allison paul, Andrey Slonski, Anna Lansfjord, Ben Sanecki, Ben Flores, Buck Melton"

names14 = "Aarthi Gurusami, Abid Ramay, Adam Zmudzinski, Alec Hendrickson, Alex Wen, Alicia Briceland, Allison paul, Andrey Slonski, Anna Lansfjord, Ben Sanecki, Ben Flores, Buck Melton, Caitlin Hoffman, Carlos Gonzalez"

names24 = "Aarthi Gurusami, Abid Ramay, Adam Zmudzinski, Alec Hendrickson, Alex Wen, Alicia Briceland, Allison paul, Andrey Slonski, Anna Lansfjord, Ben Sanecki, Ben Flores, Buck Melton, Caitlin Hoffman, Carlos Gonzalez, Chand Nirankari, Ché Sanders, Chris Henderson, Chris Lamkin, Christyn Budzyna, Dan Park, David Ramirez, Ruo Yu Tao, David Walden, Bill Deng"

names26 = "Aarthi Gurusami, Abid Ramay, Adam Zmudzinski, Alec Hendrickson, Alex Wen, Alicia Briceland, Allison paul, Andrey Slonski, Anna Lansfjord, Ben Sanecki, Ben Flores, Buck Melton, Caitlin Hoffman, Carlos Gonzalez, Chand Nirankari, Ché Sanders, Chris Henderson, Chris Lamkin, Christyn Budzyna, Dan Park, David Ramirez, Ruo Yu Tao, David Walden, Bill Deng, Denny Jovic, Dexter Moran"

names30 = "Aarthi Gurusami, Abid Ramay, Adam Zmudzinski, Alec Hendrickson, Alex Wen, Alicia Briceland, Allison paul, Andrey Slonski, Anna Lansfjord, Ben Sanecki, Ben Flores, Buck Melton, Caitlin Hoffman, Carlos Gonzalez, Chand Nirankari, Ché Sanders, Chris Henderson, Chris Lamkin, Christyn Budzyna, Dan Park, David Ramirez, Ruo Yu Tao, David Walden, Bill Deng, Denny Jovic, Dexter Moran, Diana Ozemebhoya Eromosele, Dominick Lombardo, Elan Kvitko, Elizabeth Alexander"

names64 = "Aarthi Gurusami, Abid Ramay, Adam Zmudzinski, Alec Hendrickson, Alex Wen, Alicia Briceland, Allison paul, Andrey Slonski, Anna Lansfjord, Ben Sanecki, Ben Flores, Buck Melton, Caitlin Hoffman, Carlos Gonzalez, Chand Nirankari, Ché Sanders, Chris Henderson, Chris Lamkin, Christyn Budzyna, Dan Park, David Ramirez, Ruo Yu Tao, David Walden, Bill Deng, Denny Jovic, Dexter Moran, Diana Ozemebhoya Eromosele, Dominick Lombardo, Elan Kvitko, Elizabeth Alexander, Elizabeth Brown, Ena Bekanovic, Esther Leytush, Evan Druce, Frank Lam, Gabriel Zurita, Jack Thatcher, Jason Milfred, John Colella, Jonathan Kaplan, Kelson Adams, Kristal Lam, Kunal Patel, Leland Meiners, Liam Binell, Lisa Buch, Lisa Dannewitz, Lyudmila Arinich, Mohamed Monekata, Parker Smathers, Patrick DeWitte, Renan Martins, Riley Scheid, Robin Soubry, Samantha Holmes, Scott Southard, Shaun R Sweet, Shin Wang, Sibel Ergener, Simon Thomas, Talal Talhouk, Ted Bogin, Traci Fong, Victoria Solorzano"

p groups(names30)


=begin
Reflection
• What was the most interesting and most difficult part of this challenge?
The most interesting part of this challenge was seeing how hashes can be used to organize and store arrays. The most difficult part of this challenge was figuring out how to group students in the most efficient way possible.

• Do you feel you are improving in your ability to write pseudocode and break the problem down?
I think that I am improving in my ability to write pseudocode and break problems down into small steps.

• Was your approach for automating this task a good solution? What could have made it even better?
I think that my approach for automating this task was a good solution. It might be even better if I was able to use an iterator like [each] or [map] in place of the while loops.

• What data structure did you decide to store the accountability groups in and why?
I decided to store the accountability groups in a hash because I wanted to create a collection of objects that would allow key-based value retrieval.

• What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I learned how to use the [slice] method in order to create a subarray based on the specified indexes. I also learned how to use [shuffle], a method that randomizes the elements of an array.
=end
