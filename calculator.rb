
# Message for the user to enter the operators.
puts "Please tell me what to do"
puts "Enter add or (+), subtract or (-), multiply(*) or divide(/)"
# Get the operator from the user input.
user_input = gets.chomp.downcase

# Loop until the user enter the rigth value.
until ["add", "+", "subtract", "-","multiply","*","divide","/"].include?(user_input)
  puts "Please enter add or (+)"
  puts "Please enter subtract or (-)"
  puts "Please enter multiply or (*)"
  puts "Please enter divide or (/)"
  user_input = gets.chomp
end
# Clarifying the the user input.
puts "Sweet! You entered: '#{user_input}'"

# Method to validate if is a number.
def number_validation (number)
  # If the user input is different of a number prompt again, and ask for the value again.
  while (number != '0') && (number.to_i.to_s != number.strip && number.to_f.to_s != number.strip) do
    print " \"#{number}\" is not a valid entry. "
    print "Please enter a valid number: "
    number = gets.chomp
  end
    # If the user enter a correct value just return the value.
    number = number.to_f
    return number
end

# Get the number one from the user.
puts "Please enter number one"
number_one = number_validation(gets.chomp)

# Get the number two from the user.∂
puts "Please enter number two"
number_two = number_validation(gets.chomp)


def print_formula (number_one,number_two,operator,result)
  formula = "Formula: #{number_one} #{operator} #{number_two} = #{result}"
  puts formula
end
# Method to calculate all the operations.
def calculations(user_input,number_one,number_two)
  case user_input
    when "add","+"
      result = number_one + number_two
      operator = "+"
    when "subtract","-"
      result = number_one - number_two
      operator = "-"
    when "multiply","*"
      result = number_one * number_two
      operator = "*"
    when "divide","/"
        while number_two == 0 do
          print " \"#{number_two}\" is not a valid entry. "
          print "Please enter a number different of 0: "
          number_two = number_validation(gets.chomp)
        end
      result = number_one / number_two
      operator = "/"
  end
  # Print out the formula for the calculations.
  print_formula(number_one,number_two,operator,result)
  # Return the result value.
  return result
end

calculations(user_input,number_one,number_two)
