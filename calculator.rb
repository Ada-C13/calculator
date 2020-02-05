# Nikki Vaughan
# Last Modified 1/4/20
# Build a calculator command line interface


# Determines if user enters a valid number
def valid_num(num)
    until num.match(/[0-9]/)
        puts "\nERROR, please enter a valid number"
        print "=> "
        num = gets.chomp
    end
    return num.to_i
end


# Gets numbers user wants to do operations with
def get_numbers
    print "Enter first number => "
    first_num = valid_num(gets.chomp)
    
    print "Enter second number => "
    second_num = valid_num(gets.chomp)
    
    return [first_num, second_num]
end


# Determines if user calculation option is valid
def valid_operation(user_input)
    user_input.downcase!
    
    case user_input
    when "add", "+"
        puts "\n*** ADDING ***"
        add(*get_numbers)
    when "subtract", "-"
        puts "\n*** SUBTRACTING ***"
        subtract(*get_numbers)
    when "multiply", "*"
        puts "\n*** MULTIPLYING ***"
        multiply(*get_numbers)
    when "divide", "/"
        puts "\n*** DIVIDING ***"
        divide(*get_numbers)
    else
        puts "\nERROR, please enter one operator(name or symbol)"
        print "=> "
        valid_operation(gets.chomp)
    end
    
end


# Performs addition
def add(num1, num2)
    result = num1 + num2
    puts "#{num1} + #{num2} = #{result}"
end


# Performs subtraction
def subtract(num1, num2)
    result = num1 - num2
    puts "#{num1} - #{num2} = #{result}"
end


# Performs divition
def divide(num1, num2)
    if num2 == 0
        puts "ERROR" 
    else
        result = num1 / num2
        remainder = num1 % num2
        puts "#{num1} / #{num2} = #{result}"
        puts "With a remainder of #{remainder}"
    end
end


# Performs multiplication
def multiply(num1, num2)
    result = num1 * num2
    puts "#{num1} * #{num2} = #{result}"
end


puts <<-Message

Welcome to the calculater program!!
Please enter the word or operation you would like to perform
- add(+)
- subtract(-)
- divide(/)
- multiply(*)
Message

print "=> "
user_input = valid_operation(gets.chomp)



