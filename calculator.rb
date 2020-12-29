#!/usr/bin/ruby
# 
# Title  : Calculator - Ada Cohort 13
# Author : Suely Barreto
# Date   : February 2020
# 

# Function to Prompt for an Integer
def get_integer(prompt)

  expression = /[0-9]+/  # Regular Expression for integers, no negatives              
  input = ""
                        
  while input.match(expression).to_s != input || input == ""
    print prompt
    input = gets.chomp
  end
  print "\n"
  return input.to_i

end

# Function to Prompt for Two Numbers
def get_two

  first  = get_integer("\nEnter the first number: ")
  second = get_integer("Enter the second number: ")
  return first, second

end

# Greeting
puts "\nWelcome to the Calculator Program."

# Ask for Operations
not_valid = true
while not_valid

  puts "\nWhich operator would you like to use?"
  puts "1. add (+)"
  puts "2. subtract (-)"
  puts "3. multiply (*)"
  puts "4. divide (/)"
  print "Please choose one operator (name or symbol): "
  choice = gets.chomp.downcase
  not_valid = false

  # Process Each Operation
  case choice
    when "add", "+", "1"
      first_number, second_number = get_two
      addition = first_number + second_number
      puts "#{first_number} + #{second_number} = #{addition}"

    when "subtract" , "-" , "2"
      first_number, second_number = get_two
      subtraction = first_number - second_number
      puts "#{first_number} - #{second_number} = #{subtraction}"

    when "multiply" , "*" , "3"
      first_number, second_number = get_two
      multiplication = first_number * second_number
      puts "#{first_number} * #{second_number} = #{multiplication}"

    when "divide" , "/" , "4"
      first_number, second_number = get_two
      if second_number == 0
        puts "Not a valid operation. Can't divide by zero (0). Try it again."
        not_valid = true
      else
        division = first_number / second_number
        puts "#{first_number} / #{second_number} = #{division}"  
      end

    else
      puts "This is not a valid operation. Try again."
      not_valid = true

  end

end
