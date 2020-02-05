puts "Welcome to the Calculator Program! You may choose from the following operators: \n
1. add(+)\n
2. subtract(-)\n
3. multiply(*)\n
4. divide(/)\n
Please choose an operator(name or symbol):"

operator = gets.chomp.downcase

until ["add", "+", "subtract", "-", "multiply", "*", "divide", "/"].include?(operator)
    puts "Please choose from the following operators\n
    1. add(+)\n
    2. subtract(-)\n
    3. multiply(*)\n
    4. divide(/)"
    operator = gets.chomp
end

case operator
  when "add", "+"
    puts "We're adding numbers"
  when "subtract", "-"
    puts "We're subtracting numbers"
  when "multiply", "*"
    puts "We're multiplying numbers"
  when "divide", "/"
    puts "We're dividing numbers"
end

puts "Please choose your first number"
# check for invalid input
while num1 = gets.chomp
    if num1.match?(/^-?(\d+)?(\.\d+)?$+/) # need to handle "enter"
        break
    else
        puts "Please choose a number"
    end
end
num1 = num1.to_i

puts "Please choose your second number" # repetitive, make method?
while num2 = gets.chomp
    if num2.match?(/^-?(\d+)?(\.\d+)?$+/)
        break
    else
        puts "Please choose a number"
    end
end
num2 = num2.to_i

# def validate_number(num)
# end

def calculate(operator, num1, num2)
    case operator
        when "add", "+"
            return num1 + num2
        when "subtract", "-"
            return num1 - num2
        when "multiply", "*"
            return num1 * num2
        when "divide", "/"
            return num1 / num2 # add float if % > 0
  end
end

# inelegant handling of /0. do something with "ZeroDivisionError"?
if (operator == "divide" || operator == "/") && num2 == 0
    result = "undefined"
else
    result = calculate(operator, num1, num2)
end

puts "The answer is: #{result}"
