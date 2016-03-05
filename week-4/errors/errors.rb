# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# The file with the error is error.rb.
# 2. What is the line number where the error occurs?
# The error occurs at line 170.
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# The error is at the very end of my code.
# 6. Why did the interpreter give you this error?
# I need to end the while loop.

# --- error -------------------------------------------------------

south_park = ''

# 1. What is the line number where the error occurs?
# The error occurs at line 36.
# 2. What is the type of error message?
# NameError
# 3. What additional information does the interpreter provide about this type of error?
# in `<main>': undefined local variable or method `south_park' for main:Object
# 4. Where is the error in the code?
# The error occurs on line 36 after south_park.
# 5. Why did the interpreter give you this error?
# I need to define south_park as a method or variable.

# --- error -------------------------------------------------------

def cartman
end

# 1. What is the line number where the error occurs?
# The error occurs on line 51.
# 2. What is the type of error message?
# NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# in `<main>': undefined method `cartman' for main:Object
# 4. Where is the error in the code?
# The error occurs around line 51 due to the presence of an undefined method.
# 5. Why did the interpreter give you this error?
# I need to define cartman as a method.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
# The error occurs on line 67.
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# in `cartmans_phrase': wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# The error is on line 71 after cartmans_phrase.
# 5. Why did the interpreter give you this error?
# I need to eliminate the extraneous variable.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says('I hate Kyle.')

# 1. What is the line number where the error occurs?
# The error occurs on line 86.
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# in `cartman_says': wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# The error is on line 90 after cartman_says.
# 5. Why did the interpreter give you this error?
# We need to provide the correct number of variables.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming', 'Kyle')

# 1. What is the line number where the error occurs?
# The error occurs on line 107.
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# in `cartmans_lie': wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# The error is on line 111 after cartmans_lie.
# 5. Why did the interpreter give you this error?
# We need to provide the correct number of variables.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# The error occurs on line 126.
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# in `*': String can't be coerced into Fixnum
# 4. Where is the error in the code?
# The error occurs at the string.
# 5. Why did the interpreter give you this error?
# We need to put the string and fixnum in the correct order.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20 - 20


# 1. What is the line number where the error occurs?
# The error occurs at line 141.
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# in `/': divided by 0
# 4. Where is the error in the code?
# The error is in the denominator on line 141.
# 5. Why did the interpreter give you this error?
# We can't divide by 0.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.rb"

# 1. What is the line number where the error occurs?
# The error occurs on line 157.
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# in `require_relative': cannot load such file -- /Users/DW/devbootcamp-phase0/phase-0/week-4/cartmans_essay.md
# 4. Where is the error in the code?
# The error is in the file that require_relative references.
# 5. Why did the interpreter give you this error?
# require_relative tries to load a file that doesn't exist. Also, the file must be a ruby file (file.rb).


# --- REFLECTION -------------------------------------------------------
# - Which error was the most difficult to read?
# The first error was the most difficult to read because it said the error occurred on a line that I didn’t expect.

# - How did you figure out what the issue with the error was?
# The information provided by the interpreter helped me identify the errors.

# - Were you able to determine why each error message happened based on the code?
# I was able to determine why each error message occurred based on the code. Fixing the error and seeing the error message disappear confirmed an accurate diagnosis of the problem.

# - When you encounter errors in your future code, what process will you follow to help you debug?
# I will identify the line where the error occurs. Then I will read the error message provided by the interpreter to identify the source of the problem.
