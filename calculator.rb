# Yesenia Torres
# calculator.rb 

# METHODS ----------

# Check validity of user input 
def checkvalidint(num)
    if num.to_i.to_s == num
        return true
    else return false
    end
end 

def checkvalidfloat(num)
    if num.to_f.to_s == num
        return true
    else return false
    end
end 

# def convertinput(uncovertednum)
#   this method should convert input to either float or int 
# end 

# Mathematical operations 
def add(addnum1, addnum2)
    return addnum1 + addnum2
end

def subtract(subnum1, subnum2)
    return subnum1 - subnum2
end 

def multiply(multiplynum1, multiplynum2)
    return multiplynum1 * multiplynum2
end 

def divide(divnum1, divnum2)
    # Handle int / int = float case 
    if  divnum1%divnum2 != 0
        divnum1 = divnum1.to_f
        divnum2 = divnum2.to_f
    end 
    return divnum1 / divnum2 
end 

# --------------------

# Ask for operation 
puts "Welcome to the Calculator Program! What math operation would you like me to perform? I can do the following: "
puts "add (+), subtract (-), multiply (*), or divide (/)."
operation = gets.chomp.to_s
until ["add", "+", "subtract", "-", "multiply", "*", "divide", "/"].include?(operation)
    puts "Hey buddy, I can't do that. Please only tell me to add (+), subtract (-), multiply (*), or divide(/)."
    operation = gets.chomp
end

# Perform operation
case (operation)

    # Addition 
    when "add", "+"
        # Get a valid first number 
        print "Give me a number to add to: "
        num1 = gets.chomp
        until (checkvalidint(num1) == true) || (checkvalidfloat(num1) == true)
            print "Hey bro, that's not a valid number. Please enter a single integer or float: "
            num1 = gets.chomp
        end 
        # Convert number to either int or float
        if checkvalidint(num1) == true 
            num1 = num1.to_i
        elsif checkvalidfloat(num1) == true 
            num1 = num1.to_f
        end
        # Get a valid second number 
        print "How much would you like to add to that? "
        num2 = gets.chomp
        until (checkvalidint(num2) == true) || (checkvalidfloat(num2) == true)
            print "Hey bro, that's not a valid number. Please enter a single integer or float: "
            num2 = gets.chomp
        end      
        # Convert number to either int or float
        if checkvalidint(num2) == true 
            num2 = num2.to_i
        elsif checkvalidfloat(num2) == true 
            num2 = num2.to_f
        end
        # Print result 
        puts "#{num1} + #{num2} = #{add(num1, num2)}, you're welcome!"
    
    # Subtraction
    when "subtract", "-"

        print "Give me a number to subtract from: "
        num1 = gets.chomp
        until (checkvalidint(num1) == true) || (checkvalidfloat(num1) == true)
            print "Hey bro, that's not a valid number. Please enter a single integer or float: "
            num1 = gets.chomp
        end 

        if checkvalidint(num1) == true 
            num1 = num1.to_i
        elsif checkvalidfloat(num1) == true 
            num1 = num1.to_f
        end

        print "How much would you like to subtract from that? "
        num2 = gets.chomp
        until (checkvalidint(num2) == true) || (checkvalidfloat(num2) == true)
            print "Hey bro, that's not a valid number. Please enter a single integer or float: "
            num2 = gets.chomp
        end      

        if checkvalidint(num2) == true 
            num2 = num2.to_i
        elsif checkvalidfloat(num2) == true 
            num2 = num2.to_f
        end

        puts "#{num1} - #{num2} = #{subtract(num1, num2)}, you're welcome!"
    
    # Multiplication 
    when "multiply", "*"

        print "Give me a number to multiply: "
        num1 = gets.chomp
        until (checkvalidint(num1) == true) || (checkvalidfloat(num1) == true)
            print "Hey bro, that's not a valid number. Please enter a single integer or float: "
            num1 = gets.chomp
        end 

        if checkvalidint(num1) == true 
            num1 = num1.to_i
        elsif checkvalidfloat(num1) == true 
            num1 = num1.to_f
        end

        print "How much would you like to multiply that by? "
        num2 = gets.chomp
        until (checkvalidint(num2) == true) || (checkvalidfloat(num2) == true)
            print "Hey bro, that's not a valid number. Please enter a single integer or float: "
            num2 = gets.chomp
        end      

        if checkvalidint(num2) == true 
            num2 = num2.to_i
        elsif checkvalidfloat(num2) == true 
            num2 = num2.to_f
        end

        puts "#{num1} * #{num2} = #{multiply(num1, num2)}, you're welcome!"
    
    # Division
    when "divide", "/"

        print "Give me a number to divide by: "
        num1 = gets.chomp
        until (checkvalidint(num1) == true) || (checkvalidfloat(num1) == true)
            print "Hey bro, that's not a valid number. Please enter a single integer or float: "
            num1 = gets.chomp
        end 

        if checkvalidint(num1) == true 
            num1 = num1.to_i
        elsif checkvalidfloat(num1) == true 
            num1 = num1.to_f
        end

        print "How much would you like to divide that by? "
        num2 = gets.chomp
        until (checkvalidint(num2) == true) || (checkvalidfloat(num2) == true)
            print "Hey bro, that's not a valid number. Please enter a single integer or float: "
            num2 = gets.chomp
        end      

        if checkvalidint(num2) == true 
            num2 = num2.to_i
        elsif checkvalidfloat(num2) == true 
            num2 = num2.to_f
        end

        puts "#{num1} / #{num2} = #{divide(num1, num2)}, you're welcome!"

end 

# Ways to improve: 
# - handle numbers that begin with a ".", such as ".08"
# - dry code: make any other methods to delete the repetitiveness? 

# Missing Optional Enhancements : 
# - Add support for computing exponents (2^4 = 2 * 2 * 2 * 2 = 16)
# - Add support for the modulo operator (10 % 3 = 1).
# - Add support for parentheticals, i.e. 10 / (5 + 5) = 1.
# - Add support for handling all cases (uppercase, capitals) for the operations, so that ADD and add and Add (and other combinations) are handled in the same way
