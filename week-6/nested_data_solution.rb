# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [
  [1,2],
  ["inner",["eagle", "par", ["FORE", "hook"]]]
  ]

# attempts:
# ============================================================
 p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {
  outer: {inner: {"almost" => {3 => "congrats!"}}}
  }

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

 # number_array = [5, [10, 15], [20,25,30], 35]
 # p number_array.map! { |element|
 #   if element.is_a? (Integer)
 #     element + 5
 #   else element.map! { |element2| element2 + 5 }
 #   end
 #   }

# Refactor
number_array = [5, [10, 15], [20,25,30], 35]

p number_array.map! { |element|
  if element.is_a? (Integer)
    element + 5
  else element.map! { |subarray_element| subarray_element + 5 }
  end
  }


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! { |element|
  if element.is_a? (String)
    element + "ly"
  else element.map! { |subarray_element|
    if subarray_element.is_a? (String)
    subarray_element + "ly"
    else subarray_element.map! { |subarray_element_2| subarray_element_2 + "ly"}
    end
  }
  end
}

p startup_names


=begin
Reflection
• What are some general rules you can apply to nested arrays?
IF statements can be very useful when modifying or accessing data in a nested array.

• What are some ways you can iterate over nested arrays?
You can iterate over nested arrays using conditionals to add iterators inside of iterators.

• Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
We decided to use [.map!] because we wanted to iterate over all elements of the data structure and modify the original object.
=end