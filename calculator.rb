puts "Welcome to the Ruby Calculator!"

operator = ""
# valid operators
operators = [
  "add", "+", "1", 
  "subtract", "-", "2", 
  "multiply", "*", "3", 
  "divide", "/", "4",
  "exponent", "**", "5",
  "modulo", "%", "6"
]

# prompt user for operator until they enter a valid option
until operators.include?(operator)
  puts "Please choose an operation from the list (name, symbol, or number):
  1. add(+)
  2. subtract(-)
  3. multiply(*)
  4. divide(/)
  5. exponent(**)
  6. modulo(%)"
  operator = gets.chomp.to_s.downcase
end

# update operator to operation to use in user prompt
case operator
when "add", "+", "1"
  operator = "addition"
when "subtract", "-", "2"
  operator = "subtraction"
when "multiply", "*", "3"
  operator = "multiplication"
when "divide", "/", "4"
  operator = "division"
when "exponent", "**", "5"
  operator = "exponent"
when "modulo", "%", "6"
  operator = "modulo"
end

# validate that user input is numeric
def validate_number(num)
  while num.to_i.to_s != num.strip
    puts "#{num} is not a valid number! Enter a new number: "
    num = gets.chomp
  end
  return num
end

# prompt user for number inputs
puts "You chose #{operator}! Enter your first number: "
num1 = gets.chomp
num1 = validate_number(num1)

puts "Enter your second number: "
num2 = gets.chomp
num2 = validate_number(num2)

# display result based on operator
case operator
when "addition"
  puts "#{num1} + #{num2} = #{num1.to_i + num2.to_i}"
when "subtraction"
  puts "#{num1} - #{num2} = #{num1.to_i - num2.to_i}"
when "multiplication"
  puts "#{num1} * #{num2} = #{num1.to_i * num2.to_i}"
when "division"
  # prevent user from entering 0 for num2 during division
  if num2 == "0"
    puts "You cannot divide by 0!"
  else
    puts "#{num1} / #{num2} = #{num1.to_i / num2.to_i}"
  end
when "exponent"
  formula = ""
  num2.to_i.times do |i|
    formula += "#{num1} * "
  end
  puts "#{formula.chomp(" * ")} = #{num1.to_i ** num2.to_i}"
when "modulo"
  puts "#{num1} % #{num2} = #{num1.to_i % num2.to_i}"
end
