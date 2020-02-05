#Add,Subtract,Multiply,Divide Methode
def operation(num_one, math_operation, num_two)
  if math_operation == "Add" || math_operation == "+"
      result = ((num_one.to_f) + (num_two.to_f)).round(2)
  elsif math_operation == "Subtract" || math_operation == "-"
      result = ((num_one.to_f) - (num_two.to_f)).round(2)
  elsif math_operation == "Multiply" || math_operation == "*"
      result = ((num_one.to_f) * (num_two.to_f)).round(2)
  elsif math_operation == "Divide" || math_operation == "/"
      result = ((num_one.to_f) / (num_two.to_f)).round(2)
end
return result
end

#Validate if input is an math operator
def ValidOperator (math_operation)  
until ["Add","+", "Subtract","-", "Multiply", "*", "Divide", "/"].include? math_operation
puts "Enter a valid selection"
math_operation = gets.chomp
end
return math_operation
end

#Validate if the input is Number
def ValidNumber (number)
until number.to_i == number
  puts "Enter a valid number"
  number = gets.chomp.to_i
end
return number.to_i
end

#Program Start
puts "Welcome to the Calcuator Program."

operator_array = ["Add(+)", "Subtract(-)", "Multiply(*)", "Divide(/)"]
puts operator_array

#Accept operator input
puts"Please enter the operator would you like to use?"
math_operation = gets.chomp
math_operation = ValidOperator(math_operation)

#Accept first number
puts "Enter your first number."
num_one = gets.chomp.to_i
num_one = ValidNumber(num_one)

#Accept second number
puts "Enter your second number."
num_two = gets.chomp.to_i
num_two = ValidNumber(num_two)


final_result = operation(num_one, math_operation, num_two)
puts "Result is #{final_result}"
