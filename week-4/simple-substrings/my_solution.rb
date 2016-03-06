# Simple Substrings

# I worked on this challenge by myself.


# Your Solution Below

=begin

input: string
output: string

split string into array

IF index == CA
  output "Welcome to California"
ELSE
  output "You should move to California"

=end


def welcome(address)
  address = address.split
  response = "You should move to California"
  i = 0
  while i < address.length
    if address[i] == "CA"
      response = "Welcome to California"
    end
    i += 1
  end

  p response

end