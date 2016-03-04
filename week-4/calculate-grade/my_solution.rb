# Calculate a Grade

# I worked on this challenge with: Bill Deng.


# Your Solution Below

=begin

input: integer
output: string
=>psuedocode

IF number (input) is greater than 90
  output "A"
ELSE IF number (input) is between 80 to 89
  output "B"
ELSE IF number (input) is between 70 to 79
  output "C"
ELSE IF number (input) is between 60 to 69
  output "D"
ELSE IF number (input) is under 60
  output "F"

=end


def get_grade(num)

  if num >= 90
    p "A"
    elsif num >= 80
    p "B"
    elsif num >= 70
    p "C"
    elsif num >= 60
    p "D"
    elsif num >= 0
    p "F"
  end
end



=begin
get_grade(89) # => returns "B", *not* "B+"
get_grade(70) # => returns "C"
get_grade(1)
get_grade(11)
get_grade(60)
get_grade(70)
=end
