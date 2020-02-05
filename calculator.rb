# Calculator Program

# Methods
def add(num_one, num_two)
  return num_one + num_two
end

def subtract(num_one, num_two)
  return num_one - num_two
end

def multiply(num_one, num_two)
  return num_one * num_two
end

def divide(num_one, num_two)
  return ((num_one.to_f) / (num_two.to_f)).round(2)
end

def ValidOperator (operator)
  until ["Add","+", "Subtract","-", "Multiply", "*", "Divide", "/"].include? (operator)
  puts "Enter a valid selection"
  operator = gets.chomp
  end
  return operator
end

def ValidateNumber (num)
  until num == num
    puts "Enter a valid number"
    num = gets.chomp.to_i
  end
  return num
end


puts "Welcome to the Le Calcuator Program! Enter the operator would you like to use?"
puts "-----"
operator_array = ["Add(+)", "Subtract(-)", "Multiply(*)", "Divide(/)"]
puts operator_array
user_operator = gets.chomp
user_operator = ValidOperator(user_operator)

puts "Enter your first number."
num_one = gets.chomp.to_i
num_one = ValidateNumber(num_one) #validatenumber calls the method, passes the argument num_one, and reassigns variable to the returned value of the method

puts "Enter your second number."
num_two = gets.chomp.to_i
num_two = ValidateNumber(num_two)

# Equating the word "add" to the operator +, etc and incorporating methods
case user_operator
when "add", "+"     
  puts "We're adding numbers"
  answer = add(num_one, num_two)
  puts "Your answer is #{answer}."
when "subtract", "-"
  answer = subtract(num_one, num_two)
  puts "Your answer is #{answer}."
when "multiply", "*"
  answer = multiply(num_one, num_two)
  puts "Your answer is #{answer}."
when "divide", "/"
  answer = divide(num_one, num_two)
  puts "Your answer is #{answer}."
else
  puts "What do you want from me?!"
end
