# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

def array_concat(array_1, array_2)
  new_array = array_1
  i = 0
  while i < array_2.length
    new_array.push array_2[i]
    i += 1
  end
  p new_array
end