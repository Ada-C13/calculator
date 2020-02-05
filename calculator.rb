###ARRAY DICTIONARY###
acceptable_operation = %w(add + subtract - multiply * divide / exponents ^ remainder %)
operation_map = {"add" => "+", "subtract" => "-", "multiply" => "*", "divide" => "/", "exponents" => "**", "remainder" => "%", "+" => "+", "-" => "-", "*" => "*", "/" => "/", "^" => "**", "%" => "%"}

###DEFINITON DICTIONARY####
#Converts integers to whole numbers and lets floats stay as floats
def int_or_float(number)
  if number % 1 == 0
    number = number.to_i
  end
  number
end

#Calculates operation within parentheses 
def paren_calc(user_input)
  paren_num = (user_input).split(/\(([^)]+)\)/).join.split(" ") #splits into array, i.e. "(5 + 50)" turns into 5 + 50 [5, + , 50]
  paren_num[0].to_f.method(paren_num[1]).(paren_num[2].to_f)
end

#Performs the operation entered as a string on the two numbers provided as arguments 
def perform_operation(num1, num2, op)
  int_or_float(num1.method(op).(num2))
end

#Verifies that the operation entered is appropriate by checking to see if it exists in the preapproved array of possible operations. 
def verify_operation(data_to_verify, data_acceptable)
  until (data_acceptable.include? data_to_verify) == true
    puts "Option not accepted. Please enter the symbol or name of the operation."
    data_to_verify = gets.chomp
  end
  data_to_verify
end

#Verifies that user input is a number and loops until user correctly inputs a number. If parentheses are used, a method to calculate the operation in the parentheses is called and the verify_number method is exited. 
def verify_number(data_to_verify)
  until (Integer(data_to_verify) rescue nil) != nil
    if (data_to_verify.include? ("(")) && (data_to_verify.include? (")"))
      return paren_calc(data_to_verify)
    end

    puts "Input not accepted, please enter a number:"
    data_to_verify = gets.chomp
  end
  data_to_verify.to_f
end

###COLLECT USER INPUT###
puts "Welcome to the Calculator App! Your options are:
1. add(+)
2. subtract(-)
3. multiply(*)
4. divide(/)
5. exponents(^)
6. remainder(%)"

#Collect user input for operation
puts "Please enter the math operation you would like to perform (name or symbol)"
operation = gets.chomp.downcase
operation = verify_operation(operation, acceptable_operation)
operation = operation_map[operation]

#Collects user input for numbers
puts "Please enter the first number for the math operation."
num1 = gets.chomp
num1 = verify_number(num1)

puts "Please enter the second number for the math operation."
num2 = gets.chomp
num2 = verify_number(num2)

#Prints results of user entered operations and numbers to the console. If attempting to divide by 0, program will give error message and exit program
if operation == "/" && num2 == 0
  puts "Unable to divide by 0"
  puts "Now exiting calculator"
else
  puts "Result of #{int_or_float(num1)} #{operation} #{int_or_float(num2)} = #{perform_operation(num1, num2, operation)}"
  puts "Now exiting calculator"
end
