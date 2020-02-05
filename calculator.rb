puts "Welcome to the Calculator program! Which operator would you like to use?"
puts "1. add (+)
2. subtract (-)
3. multiply (*)
4. divide (/)
5. exponify (^)
6. find a remainder from a division (%)"

# Check if a valid operator is chosen
command = gets.chomp.downcase
until ["add", "+", "subtract", "-", "multiply", "*", "divide", "/", "remainder", "find a remainder", "%", "exponify", "^"].include?(command)
  puts "Please tell me to add (+), subtract (-), multiply (*), divide (/), exponentiate (^) or find a remainder (%)!"
  command = gets.chomp.downcase
end

# Check if user input is not a letter
def input_check(number)
  until number.match(/\A[-]?\d+(\.\d+)?\z/)
    puts "Please enter a valid number "
    number = gets.chomp
  end
  return number
end

puts "Please enter the first number "
first_number = gets.chomp
checked_first = input_check(first_number)

puts "Please enter the second number "
second_number = gets.chomp
checked_second = input_check(second_number)

# Convert a string to a float or an integer depending on the presence of "." 
def int_or_float(num)
  return num.include?(".") ? num.to_f : num.to_i
end

checked_first = int_or_float(checked_first)
checked_second = int_or_float(checked_second)

puts "Here is the result of the calculation."

# Output the result depending on the chosen operation
case command
when "add", "+"
  puts "#{checked_first} + #{checked_second} = #{checked_first + checked_second}"
when "subtract", "-"
  puts "#{checked_first} - #{checked_second} = #{checked_first - checked_second}"
when "multiply", "*"
  puts "#{checked_first} * #{checked_second} = #{checked_first * checked_second}"
when "divide", "/"
  # Handle the division by zero case
  if checked_second != 0 && (checked_first % checked_second > 0)
    puts "#{checked_first} / #{checked_second} = #{checked_first.to_f / checked_second}"
  elsif checked_second == 0
    puts "Error! Division by zero"
  end
when "exponify", "^"
  # Show the process of exponentiation
  print "#{checked_first} * " * (checked_second - 1)
  puts "#{checked_first} = #{checked_first ** checked_second}"
when "remainder", "find a remainder", "%"
  puts "#{checked_first} % #{checked_second} = #{checked_first % checked_second}"
else
  puts "What do you want from me?!"
end
