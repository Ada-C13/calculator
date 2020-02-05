# Displays the list of available operators.
def display_operators
  puts "1. add(+)"
  puts "2. subtract(-)"
  puts "3. multiply(*)"
  puts "4. divide(/)"
end

# Validates user's input   /^-?\d*\.?\d*$/

# ^ start of string
# -? minus sign one or zero times
# \d* digits, zero or more
# \.? dot sign one or zero times
# $ end of string (or line)

def validate_input(number)
  until number.match(/^-?\d*\.?\d*$/)
    puts "Enter valid number: "
    number = gets.chomp
  end

  number = number.to_f

  return number
end

OPERATORS = [
  "add", 
  "+", 
  "subtract", 
  "-", 
  "multiply", 
  "*", 
  "divide", 
  "/"
]

# Prompts the user to choose an operator and validates user's input
def choose_operator
  puts "Please choose an operator (name or symbol): "
  operator = gets.chomp.downcase

  until OPERATORS.include?(operator)
    puts "Enter the valid operator: "
    operator = gets.chomp
  end

  return operator
end

# Prompts the user to enter a number, validates the number
def get_numbers
  numbers = []
  2.times do
    puts "Enter a number for the math operation: "
    num = gets.chomp
    validated = validate_input(num)
    numbers << validated
  end

  return numbers
end

# Calculates and outputs the result
def perform_calculation(operator, numbers)
  case operator
  when "add", "+"
    puts "#{numbers[0]} + #{numbers[1]} = #{(numbers[0] + numbers[1]).round(2)}"
  when "subtract", "-"
    puts "#{numbers[0]} - #{numbers[1]} = #{(numbers[0] - numbers[1]).round(2)}"
  when "multiply", "*"
    puts "#{numbers[0]} * #{numbers[1]} = #{(numbers[0] * numbers[1]).round(2)}"
  when "divide", "/"
    if numbers[1] == 0
      puts "Division by zero is undefined."
    else
      puts "#{numbers[0]} / #{numbers[1]} = #{(numbers[0] / numbers[1]).round(2)}"
    end
  end
end


puts "Welcome to the Calculator program!"
puts "Which operator would you like to use?"

display_operators
chosen_operator = choose_operator
numbers_returned = get_numbers
perform_calculation(chosen_operator, numbers_returned)
