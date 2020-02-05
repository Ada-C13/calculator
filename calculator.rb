#introduce the program and the operator options that the person can use
puts "Welcome to the calculator program! The following are the supported operation types.
add (+) || subtract (-) || multiply (*) || divide (/) || modulo (%)"

#create a method to determine which operator the user entered and account for various names for each operation, including unexpected user input
def deterimine_operator_type(operation)
  case operation
    when "add", "+", "addition", "plus"
      return "addition"
    when "subtract", "subtraction", "-", "minus", "sub"
      return "subtraction"
    when "multiply", "*", "multiplication", "times"
      return "multiplication"
    when "divide", "/", "division", "divided by"
      return "division"
    when "mod", "modulo", "modulus", "%"
      return "modulo"
    else
      return "unexpected user input"
  end
end

#ask user for the type of operation they want for the calculation
puts "Please input the type of operation."
operator_entered = gets.chomp
actual_operator = deterimine_operator_type(operator_entered)

#if the operator entered is not one of the accepted operator types, keep asking the user until they enter a valid operator type
while actual_operator == "unexpected user input"
  puts "That's not a valid operator, please try again."
  operator_entered = gets.chomp
  actual_operator = deterimine_operator_type(operator_entered)
end

#create a method to ask for an integer and to keep asking until an actual integer (i.e. not a string) is entered
def ask_for_integer(number_asking_for)
  puts "Please input number #{number_asking_for}: "
  input_as_string = gets.chomp #get user input as a string and store as its own variable in order to account for when a 0 is entered
  input_as_int = input_as_string.to_i #convert the user input to an integer

  #keep asking for input until a number is entered ("0" is considered a valid number)
  while input_as_string != "0" && input_as_int == 0
    puts "That's not a number, please try again."
    input_as_string = gets.chomp
    input_as_int = input_as_string.to_i
  end
  return input_as_int #return the number
end

#invoke the ask_for_integer method to get the two numbers for the calculation
num1 = ask_for_integer("1")
num2 = ask_for_integer("2")

#create a method to perform the calculation based on the operation the user wants, and the two numbers the user entered.
def calculator(operation, num_1, num_2)
  if operation == "addition"
    return num_1 + num_2
  elsif operation == "subtraction"
    return num_1 - num_2
  elsif operation == "multiplication"
    return num_1 * num_2
  elsif operation == "division"
    if num_2 == 0
      return "Sorry, you cannot divide by 0."
    else
      return num_1 / num_2
    end
  elsif operation == "modulo"
    return num_1 % num_2
  end
end

#output the calculated answer
puts "Your answer: #{calculator(actual_operator, num1, num2)}"
