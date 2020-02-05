# check to see if the operator input is correct, if not prompt the user to enter correct one
def operator_check(operator)
  until ["add", "+", "subtract", "-", "multiply", "*", "division", "/"].include?(operator)
    puts "Please choose an operator or symbol"
    operator = gets.chomp
  end
  operator
end

# check if the number entered is correct
def num_check(num)
  until num.to_i.to_s == num
  puts "Invalid entry. Please entere an integer."
  num = gets.chomp.to_i
  end
  return num.to_i
end

 # methods for operation
def addition(n1, n2)
  answer = n1 + n2
  puts "The sum is... #{n1} + #{n2} = #{answer}"
end

def subtraction(n1, n2)
  answer = n1 - n2
  puts "The result is... #{n1} - #{n2} = #{answer}"
end

def multiplication(n1,n2)
  answer = n1 * n2
  puts "The result is... #{n1} * #{n2} = #{answer}"
end

def division(n1, n2)
  answer = n1 / n2
  puts "The result is... #{n1} / #{n2} = #{answer}"
end

# get the numbers to be operated from the usesr
puts "Welcome to our school calculator."
puts "Please choose your operator"
selected_op = gets.chomp
selected_op = operator_check(selected_op)

puts "Please choose your first number."
n1 = gets.chomp
n1 = num_check(n1)

puts "Please choose your second number."
n2 = gets.chomp
n2 = num_check(n2)

# call methods to return the values
case selected_op
# Additon
when "add","+"
  addition(n1, n2)

# Subtract
when "subtraction","-"
 subtraction(n1, n2)

# Multiply
when "multiply", "*"
 multiplication(n1, n2)

# Division
when "division", "/"
  if n2 == 0
   puts "Unable to divide by 0."
  else
   division(n1, n2)
  end
end
