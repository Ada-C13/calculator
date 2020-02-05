## METHODS ##

# Modifies the Float class with method that converts the float to an integer if the integer is equal to the original float (Source: Yehuda Katz, https://stackoverflow.com/questions/1077346/ruby-round-float-to-int-if-whole-number)  
class Float
	def prettify
		to_i == self ? to_i : self
  end
end

# Define a method that executes an until loop to check whether the user input is an integer or a float (i.e., if no errors are returned when the input is a parameter of the Integer class); if true, returns the input as a float that invokes the prettify method; if false, prompts for a valid number
def verify_num(input)
	input = gets.chomp

	until (Integer(input) rescue false) || (Float(input) rescue false)
		puts "Please enter a valid number."
		input = gets.chomp
	end
	
	return input.to_f.prettify
end

# Define a method that executes an until loop to check whether the user input, converted to downcase, includes any of the valid operator options; if true, returns the input; if false, prompts for a valid option
def verify_op(operation)
	operation = gets.chomp
	until ["1", "add", "+", "2", "subtract", "-", "3", "multiply", "*", "4", "divide", "/", "5", "exponent", "^", "6", "remainder", "%"].include?(operation.downcase)
		puts "Please enter a valid option."
		operation = gets.chomp
	end

	return operation
end

## PROGRAM START ##

# Print an introductory message
puts "Welcome to the Calculator Program!\n\n" 
# Prompt the user to choose a math operator, accepting both the name and symbol for each possible choice
puts "Which operator would you like to use?"
puts "1. add(+)"
puts "2. subtract(-)"
puts "3. multiply(*)"
puts "4. divide(/)"
puts "5. exponent(^)"
puts "6. remainder(%)\n\n"
# Invoke the verify_op method and assign the output to the operation variable
operation = verify_op(operation)

# Prompt the user for two numbers, invoke the verify_num method and assign the output to the num_1 and num_2 variables, respectively
puts "\nPlease enter the first number."
num_1 = verify_num(num_1)
puts "\nPlease enter the second number."
num_2 = verify_num(num_2)
	
# Execute a while loop that checks whether the value assigned to operation includes any of the strings associated with the divide or modulo operators AND whether the value assigned to num_2 is 0; if true, prints an error message prompting the user to choose a number greater than 0, invokes the verify_num method, and assigns the new number to the num_2 variable
while ["4", "divide", "/", "6", "remainder", "%"].include?(operation) && num_2 == 0
		puts "Error! Please enter a number greater than zero."
		num_2 = verify_num(num_2)
end

# Execute a case statement that checks the value assigned to operation; depending on which operator the user chose, the operator variable is assigned with a symbol that best represents the operator, and the result variable is assigned the output of num_1 + num_2, num_1 - num_2, etc.
case operation
	when "1", "add", "+"
		operator = :+
		result = num_1 + num_2
	when "2", "subtract", "-"
		operator = :-
		result = num_1 - num_2
	when "3", "multiply", "*"
		operator = :*
		result = num_1 * num_2
	when "4", "divide", "/"
		operator = :/
		result = num_1 / num_2
	when "5", "exponent", "^"
		operator = :^
		result = num_1 ** num_2
	when "6", "remainder", "%"
		operator = :%
		result = num_1 % num_2
end

# Print a confirmation message, the equation, and the result
puts "\nThank you! Here is your result:"
puts "#{num_1} #{operator} #{num_2} = #{result}"