# Display intro to User.
puts "Let's have some Calculator Fun!"
puts "You will need to enter a math operation and two whole numbers."
# Ask User for input.
puts "Please enter an operator (name or symbol) -  ex: add(+), subtract(-), multiply(*), divide(/)"
operator = gets.chomp.downcase


# Check if User input is included in array. If not, ask again.
until ["add", "+", "subtract", "-", "multiply", "*", "divide", "/"].include?(operator)
    puts "You have entered an invalid operator. Re-enter an operator:"
    operator = gets.chomp.downcase
end
program_operator = operator


# Ask User for input for first number.
puts "Please enter your first number."
num1 = gets.chomp
# Verify User input is an integer - if not, ask again.
while (num1 != '0') && (num1.to_i.to_s != num1)
  puts "That is not a valid number. Please enter a number."
  num1 = gets.chomp
end
# Convert User input to integer.
num1 = num1.to_i


# Ask User for input for second number.
puts "Please enter your second number."
num2 = gets.chomp



# Verify User input is an integer - if not, ask again AND 
# Do check: if operator is division then num2 cannot be zero. 
while ((num2 != '0') && (num2.to_i.to_s != num2)) || ((program_operator == "division" || program_operator == "/") && num2 == "0")
  if num2 == "0"
    puts "You cannot divide by zero. Please enter another number."
  else
    puts "that is not a valid number. Please enter a number."
  end
  num2 = gets.chomp
end
# Convert User input to integer.
num2 = num2.to_i


# Use case statement to perfom various operations depending on program_operator input. 
case program_operator
when "add", "+"
  puts operation_addition = num1 + num2
when "subtract", "-"
  puts operation_subtraction = num1 - num2
when "multiply", "*"
  puts operation_multiplication = num1 * num2
when "divide", "/"
  puts operation_division = num1 / num2
end
