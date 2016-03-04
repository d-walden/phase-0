# Leap Years

# I worked on this challenge with: Bill Deng.


# Your Solution Below

=begin

input: number
output: boolean

=> pseudocode

IF year is divisible by 400 and 100
  return true
IF year is divisible by 4 but not 100
  return false
Everything else
  return false

=end



def leap_year?(year)

  if (year % 100 == 0 && year % 400 == 0)
    p true
  elsif (year % 100 != 0 && year % 4 == 0)
    p true
  else
    p false
  end
end

=begin
leap_year?(2000) # => true
leap_year?(2001) # => false

leap_year?(2004) # => true
leap_year?(1900) # => false

leap_year?(1800) # => false
leap_year?(2016) # => true
=end

