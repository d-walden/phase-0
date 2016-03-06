# Factorial

# I worked on this challenge with: Shin Wang.


# Your Solution Below

=begin

input: integer
output: integer

=end

def factorial(number) #input is an integer
  if number == 0 || number == 1 #if number = 0 or 1, output 1
    return 1
  end

  product = number
  while number > 1 #loop from number until 1
    product = product * (number - 1) #if number = 2, then product = number * number - 1

    number = number - 1 #number = number minus 1

  end

  if product > 1
    return product
  end

end