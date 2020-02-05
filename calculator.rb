# a math operation 
# a number for the math operation
# a second number of the math operation 

# Create array to store all operators: 
operators = ["add(+)", "substract(-)", "multiple(*)", "divide(/)"]
puts "Welcome to the Calculator program! Which operator would you like to use?"

# print options of operations
n = 1
operators.each do |i|
    puts "#{n}. " + "#{i}"
    n+=1
end

puts "Please choose one operator (name or symbol):"
number_symbol = gets.chomp.downcase

until ["add","+","subtract", "-","multiply", "*" , "divide" , "/"].include?(number_symbol)
    puts "You have entered an invalid input, please try again"
    number_symbol = gets.chomp.downcase
end 

# ask the users the two numbers that they want to calculate 
puts "What are the number you would like to calculate? "

    # the first number for the math operation 
    
    print "First number: "
    num1 = gets.chomp
    # verify the user's input make sure it is not a string or empty
    until num1.to_i.to_s == num1
        puts " You have entered an invalid input, please try agian:"
        num1 = gets.chomp
    end
        num1 = num1.to_i

    # the second number of the math operation
    print "Second number: "
    num2 = gets.chomp
    until num2.to_i.to_s == num2
        puts " You have entered an invalid input, please try again:"
        num2 = gets.chomp            
    end
     
# Get the operation 
case number_symbol
    when "add", "+"
        puts num1 + num2
    when "subtract", "-"
        puts num1 - num2
    when "multiply", "*"
        puts num1 * num2
    when "divide", "/" 
        if num2 == "0"
            puts "The divisor cannot be 0"
        else 
            puts num1 / num2.to_i
        end
    else
        puts "What can I do for you?!"
  end
