def addition(first_number, second_number)
  return first_number + second_number
end
def subtraction(first_number, second_number)
  return first_number - second_number
end
def multiplication(first_number, second_number)
  return first_number * second_number
end
def division(first_number, second_number)
  return first_number / second_number
end

puts "Welcome to the calculator program. Which operator would you like to use?"
puts "
1. Add (+)
2. Subtract (-)
3. Multiply (*)
4. Divide (/)
Please choose your operator, you can input either the name or symbol:"
operator = gets.chomp.downcase

until operator == "add" || operator == "+" || operator == "subtract" || operator == "-" || operator == "multiply" || operator == "*" || operator == "divide" || operator == "/"
  puts "Please enter a valid operator. Add (+), subtract (-), multiply (*), divide (/)."
  operator = gets.chomp
end

puts "Please enter two numbers:"
first_number = gets.chomp.to_i
second_number = gets.chomp.to_i
while first_number == 0 || second_number == 0
  puts "Please enter two integers:"
  first_number = gets.chomp.to_i
  second_number = gets.chomp.to_i
end

# better way to validate number
# def validate_num(input)
# is_valid = input.to_i.to_s == input || input.to_f.to_s == input
# return is_valid
# end

puts "Here's the result of our calculations!"
if operator == "add" || operator == "+"
puts addition(first_number, second_number)
elsif operator == "subtract" || operator == "-"
  puts subtraction(first_number, second_number)
elsif operator == "multiply" || operator == "*"
  puts multiplication(first_number, second_number)
elsif operator == "divide" || operator == "/"
  puts division(first_number, second_number)
end
