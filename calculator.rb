# Calculator assignment
# Purpose: CLI calculator 

# Welcome interface of program
# Ask user for input

puts "Welcome to the Command Line Interface Calculator! 
Which operator would you like to use? \n
1. add(+)
2. subtract(-)
3. multiply(*)
4. divide(/)
5. exponentiate(** or ^)
Please choose one operator(name or symbol):"

# store user's choice of operation in variable, "operation"
operation = gets.chomp

# prevent user from providing an invalid operator
# store valid operations in an array
# use .include? to ensure operation has a valid value
until ["add", "+", "subtract", "-", "multiply", "*", "divide", "/", "exponentiate", "^", "**"].include?(operation)
  puts "Please provide a valid operator:"
  operation = gets.chomp
end

# store user provided numbers in variables "num_one" and "num_two"
# also convert user numbers to floats
# Number 1
puts "Great! Please provide the first number for the calculator."
num_one = gets.chomp
while num_one.to_i.to_s != num_one.strip # input is not a number
  puts "Please provide a number: "
  num_one = gets.chomp
end

num_one = num_one.to_f

# Number 2
puts "Please provide the second number for the calculator."
num_two = gets.chomp
while num_two.to_i.to_s != num_two.strip # input is not a number
  puts "Please provide a number: "
  num_two = gets.chomp
end

num_two = num_two.to_f

# can also do the following for validation:
# def validate_num(input)
#   is_valid = input.to_i.to_s == input
#   return is_valid
# end
# 
# puts validate_num(6) # true
# puts validate_num("hello")

# ** To accept floats would add num_two.to_f.to_s == input


# conditional for verifying user provided numbers are valid floats
# if yes, then output message that input was valic

# handling name and symbol for each operation
# also handling the operation performed

# handling division by zero
if num_two == 0 && ("divide" || "/")
  puts "Cannot divide by zero, please enter numbers into the calculator again."
  return
end


# case/when statement to handle calculation

case operation
  when "add", "+"
    puts "#{num_one} + #{num_two} = #{num_one + num_two}"
  when "subtract", "-"
    puts "#{num_one} - #{num_two} = #{num_one - num_two}"
  when "multiply", "*"
    puts "#{num_one} * #{num_two} = #{num_one * num_two}"
  when "divide", "/"  
    puts "#{num_one} / #{num_two} = #{num_one / num_two}"
  when "exponentiate", "^", "**"
    puts "#{num_one} ** #{num_two} = #{num_one ** num_two}"
end
