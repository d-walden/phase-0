# I worked on this challenge with: Bill Deng.



# Your Solution Below

=begin
 input: integer
output: boolean

if sum of two shortest lengths is greater than longest length
  return true
if sum of two shortest lengths is equal to or less than longest length
  return false

=end

def valid_triangle?(side1, side2, side3)

  triangle_sides=[side1, side2, side3].sort

  p (triangle_sides[0] + triangle_sides[1]) > triangle_sides[2]

end