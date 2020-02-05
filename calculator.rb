# This program is a calculator!  It takes input from the user 
# (operation & 2 numbers) and prints the calculation based on their input

# Method for checking for a valid math operation
# Allows symbol or word
def valid_operator(operator_p)
  until ["add", "+", "subtract", "-", "multiply", "*", "divide", "/"].include? operator_p
    puts "\n(!) Hmm... I didn't quite understand that."
    puts "(!) Please choose from the following operators:"
    puts "(!) (You can enter the word or the symbol)
    \nadd (+), subtract (-), multiply (*), divide (/)"
    print "\nSo..what'll it be? ==> "
    operator_p = gets.chomp.downcase
  end
  return operator_p
end

# Method for displaying a message recognizing the user's input
def welcome(operator_p)
  case operator_p
  when "add", "+"
    puts "Looks like you want to add!  Great choice."
  when "subtract", "-"
    puts "Looks like we'll be subtracting.  Fun!"
  when "multiply", "*"
    puts "Multiplication Station ahoy!"
  when "divide", "/"
    puts "Divide & conquer, eh?"
  end
end

# Method for checking for a valid number
# Allows only integers (no number words)
def valid_number(num_p)
  until num_p.to_i.to_s == num_p
    puts "I'm not sure that's a number... try again please!"
    puts "You can enter an integer (like 1 or 5)."
    print "\nPlease re-enter your number ==> "
    num_p = gets.chomp
  end
  return num_p.to_i
end

# Method for math calculations (a single method to rule them all)
# Sets parameters and determines a case for the operator_p parameter
def math(number1,number2,operator_p)
  case operator_p
  when "add", "+"
    return number1 + number2
  when "subtract", "-"
    return number1 - number2
  when "multiply", "*"
    return number1 * number2
  when "divide", "/"
    while number2 == 0
      puts "Hmm... we can't divide by zero... \nplease enter another non-zero number ==> "
      number2 = gets.chomp.to_f
    end
    return number1.to_f / number2.to_f
  end
end

# Welcome
puts "\n*****************************"
puts "Welcome to Leah's Calculator!"
puts "*****************************"
puts "\nLet's do some math!"
puts "Tell me an operator and some numbers, and I'll tell you the answer."
puts "\nHere are your choices: add (+), subtract (-), multiply (*), or divide (/)."

# Read in input from user, check for input using methods
print "\nWhat operator would you like? => "
operator = gets.chomp.downcase
operator = valid_operator(operator)
puts welcome(operator)

print "\nWhat's your first number? ==> "
num1 = gets.chomp
num1 = valid_number(num1)

print "\nWhat's your second number? ==> "
num2 = gets.chomp
num2 = valid_number(num2)

# Display answer to user
answer = math(num1,num2,operator)
puts "\n*************************"
puts "Your answer is #{answer}!"
puts "*************************"
