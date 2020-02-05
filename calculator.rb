# Method for checking if user input is a valid number.
def check_number(number)
	while (number != '0') && (number.to_i.to_s != number.strip)
		puts "Please input a valid number."
		number = gets.chomp
	end
	return number.to_f
end

# Introduction
puts "Welcome to the Calculator program! Which operator would you like to use?"
puts "1. add (+)"
puts "2. substract (-)"
puts "3. multiple (*)"
puts "4. divide (/)"
puts "5. modulo (%)"
puts "6. exponents (^)"
puts "Please choose one operator (name or symbol):"

operator = gets.chomp.downcase # Variable containing the chosen operator.

# Checks that the user has submitted a valid operator.
until ["add", "+", "subtract", "-", "multiple", "*", "divide", "/", "modulo", "%", "exponents", "^"].include?(operator)
	puts "Please choose a valid operator from the list."
	operator = gets.chomp
end

# Prompts the user for the first number.
puts "What is the first number you want to use in your calculation?"

first_num = check_number(gets.chomp)

# Prompts the user for the second number.
puts "What is the second number you want to use in your calculation?"

second_num = check_number(gets.chomp)

# Prints results based on chosen operator.
puts "RESULT:"

case operator
	when "add", "+"
		puts "#{ first_num } + #{ second_num } = #{ first_num + second_num }"
	when "subtract", "-"
		puts "#{ first_num } - #{ second_num } = #{ first_num - second_num }"
	when "multiply", "*"
		puts "#{ first_num } * #{ second_num } = #{ first_num * second_num }"
	when "modulo", "%"
		puts "#{ first_num } % #{ second_num } = #{ first_num % second_num }"
	when "exponents", "^"
		show_exponents = first_num.to_s

		(second_num.to_i - 1).times do |i|
			show_exponents += " * #{ first_num }"
		end

		puts "#{ first_num } ^ #{ second_num } = #{ show_exponents } = #{ first_num ** second_num }"
	when "divide", "/"
		if second_num == 0
			puts "It is not possible to divide by 0."
		else
			puts "#{ first_num } / #{ second_num } = #{ first_num / second_num }"
		end
end
