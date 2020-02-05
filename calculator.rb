# Program that acts like a calculator

# Display welcome message and instructions
puts "Welcome to the calculator program! Which operation would you like to use?"
puts "\n1. add(+) \n2. substraction(-) \n3. multiply(*) \n4. divide(/)"
puts "\nPlease choose one operator(number, name or symbol for the operation):"

acceptable_operation = %w(1 add + 2 subtract - 3 multiply * 4 divide /)

# Methods for operations
def addition (x, y)
  result = (x + y)
end

def substraction (x, y)
  result = (x - y)
end

def multiplication (x, y)
  result = (x * y)
end

def division (x, y)
  result = (x / y)
end

# Methods for verification
def verify_operation(data_to_verify, data_acceptable)
  until (data_acceptable.include? data_to_verify) == true
    puts "Option not accepted. Please enter the symbol or name of the operation."
    data_to_verify = gets.chomp
  end
  data_to_verify
end

def verify_number(data_to_verify)
  until (Integer(data_to_verify) rescue nil) != nil
    puts "Input not accepted, please enter a number:"
    data_to_verify = gets.chomp
  end
  data_to_verify.to_f
end

# Prompt user to select an operation, two numbers and verify the input
puts "What operation would you like to do?"
operation = gets.chomp.downcase
operation = verify_operation(operation, acceptable_operation)

puts "Enter in your first number"
first_number = gets.chomp
first_number = verify_number(first_number)

puts "Enter in your second number"
second_number = gets.chomp
second_number = verify_number(second_number)

# Calculate operation user requested
case operation
  when "add", "+", "1"
  puts "You have chosen to add " "#{first_number} with #{second_number}"
  result = addition(first_number, second_number)
  when "substraction", "-", "2"
  puts "You have chosen to substract " "#{first_number} with #{second_number}"
  result = substraction(first_number, second_number)
  when "divide", "/", "3"
  puts "You have chosen to divide " "#{first_number} by #{second_number}"
    if second_number == 0
      result = 0
    else
      result = division(first_number, second_number)
    end
  when "multiply", "*", "4"
  puts "You have chosen to multiply " "#{first_number} with #{second_number}"
  result = multiplication(first_number, second_number)
  else 
  puts "You have made an invalid choice"
end

# Display operation result with two decimals
puts result.round(2)
