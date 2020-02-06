# create a hash to store the operation and welcoming user
puts "Welcome to Sharon's calculator Program! Please see below a list of operators you can choose from"
accepted_operation = { "add" => "+", "subtract" => "-" , "multiply" => "*", "divide" => "/", "exponents" => "^" , "modulo" => "%" }

# loop thru the operator hash in order to show user what the choices are
i = 1
accepted_operation.each do |key, value|
    puts "#{i}. #{value} (#{key})" 
    i += 1
end

# ask user for a math operation
puts "Please chose one operator (either name or symbol)"
operation = gets.chomp.downcase

# test the operation that user input is valid or not
until accepted_operation.values.include?(operation) || accepted_operation.keys.include?(operation.downcase)
    puts "Invalid input! Please try again!"
    operation = gets.chomp.downcase
end

# create method for checking if the user has input a valid integer number for the formular
def num_check(user_input)
   while (user_input != '0') && (user_input.to_i.to_s != user_input.strip && user_input.to_f.to_s != user_input.strip) do
        puts "Invalid input, please enter an valid number!"
        user_input = gets.chomp
    end
    return user_input.to_f
end

# ask user for the first number and check if it's valid
puts "Now, please enter the first number for the calculation"

num1 = gets.chomp
# to return the new user input from the method
num1 = num_check(num1)

# ask user for the second number and check if it's vaild
puts "Now, please enter the second number for the calculation"
num2 = gets.chomp
# to return the new user input from the method
num2 = num_check(num2)

# converting the opertaion user inputed from word to symbol
if accepted_operation.keys.include?(operation.downcase) 
  symbol = accepted_operation[operation]
else 
  symbol = operation
end

# showing the formula and answer depending on user's inputs
puts "Here is your formula: #{num1} #{symbol} #{num2}"
print "Your answer is: "
case operation
  when "add","+"
    puts num1 + num2
  when "subtract", "-"
    puts num1- num2
  when "multiply", "*"
    puts num1 * num2
  when  "divide", "/"
    puts num1 / num2
  when "exponents", "**"
    puts num1 ** num2 
  when "modulo","%" 
    puts num1 % num2 
end      
