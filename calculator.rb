def operator_validation(operator)
  operator_options = ["+", "add", "-", "subtract", "*", "multiply", "/", "divide", "**", "exponent", "%", "modulo"]
  until operator_options.include?(operator)
    puts "Invalid. Please provide one of the operators listed above:"
    operator = gets.chomp.downcase
  end
  return operator
end


def positive_num_validation(number)
  # The value of a new variable is: turn the user input to a integer then change it back to a string
  num = number.to_i.to_s
  # If the user input matches the new variable, it pass; otherwise, try again
  until num == number
    puts "Invalid. Please provide a number:"
    number = gets.chomp
    num = number.to_i.to_s
  end
  return number
end


def calculation(operator, first_number, second_number)
  case operator
    when "add", "+"
      return "#{first_number} + #{second_number} = #{first_number + second_number}"
    when "substract", "-"
      return "#{first_number} - #{second_number} = #{first_number - second_number}"
    when "multiply", "*"  
      return "#{first_number} * #{second_number} = #{first_number * second_number}"
    when "divide", "/"
      return "#{first_number} / #{second_number} = #{first_number / second_number}"
    when "modulo", "%"
      return "#{first_number} % #{second_number} = #{first_number % second_number}"
    when "exponent", "**"
      return "#{first_number} ** #{second_number} = #{first_number ** second_number}"
    else
      return "ERROR!"
  end
end


# Prompt for operator
puts "Welcome to the Calculator program! 
Which operator would you like to use?
\n1. add(+) \n2. substract(-) \n3. multiply(*) \n4. divide(/) \n5. exponent(**) \n6. modulo(%)
\nPlease choose one operator:"
operator = gets.chomp.downcase
# call the opterator_validation method
validated_operator = operator_validation(operator)

# Prompt for the first number
puts "Please provide the first number:"
first_num = gets.chomp
# call the positive_num_validation method
validated_first_num = positive_num_validation(first_num).to_i

# Prompt for the second number
puts "Please provide the second number:"
second_num = gets.chomp
# call the positive_num_validation method
validated_second_num = positive_num_validation(second_num).to_i

# Print out the result
result = calculation(validated_operator, validated_first_num, validated_second_num)
puts "Here's the result: #{result}"
