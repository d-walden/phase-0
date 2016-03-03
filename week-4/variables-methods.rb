# Full name greeting: Write a program that asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.

puts 'Hi there, what is your first name?'
first_name = gets.chomp
puts 'What is your middle name?'
middle_name = gets.chomp
puts 'And what is your last name'
last_name = gets.chomp
puts 'Hello '+first_name+' '+middle_name+' '+last_name+'!'


# Bigger, better favorite number: Write a program that asks for a person's favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better number.

puts 'What is your favorite number?'
number = gets.to_i + 1
puts 'I must say '+number.to_s+' is a bigger and better number.'



# Reflection
- How do you define a local variable?

You define a local variable by setting the variable equal to a string or number.

Example 1: `variable = “hello”`
Example 2: `variable = 100`

- How do you define a method?

To create a method, use the following syntax:
```
def method(argument)
  #define method here
end
```

- What is the difference between a local variable and a method?

Local variables store information. Methods allow objects to do things. Objects perform methods.

- How do you run a ruby program from the command line?

To run a ruby program from the command line use the following command:
`ruby file_name.rb`

- How do you run an RSpec file from the command line?

To run an RSpec file from the command line use the following command:
`rspec spec-file-name.rb`

- What was confusing about this material? What made sense?

I had trouble figuring out how to output the code that the RSpec file was looking for. It turned out that I just needed to change `puts` to `p`. Everything else made sense. I think the biggest challenge going forward will be learning the proper syntax.

Here are links to my challenge solution files:
[Creating Methods](define-method/my_solution.rb)
[Return a Formatted Address](address/my_solution.rb)
[Defining Math Methods](math/my_solution.rb)

