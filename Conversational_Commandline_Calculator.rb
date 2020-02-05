# Define get_valid_num to make sure the user enters a valid number to be utilized in the calculator (do_calculator method)
def get_valid_num(prompt)
    valid_entry = false
    while !valid_entry
      puts "#{prompt}" 
      entered = gets.chomp
      entry_to_check = entered.scan(/(-?\.?)\d+.?(\d+)?/)
      if entry_to_check.length != 1
        puts "Invalid number, please try again."
      else
        valid_entry = true
        entered = entered.to_f
      end
    end
    return entered
end

# Define do_calculator to get a valid operator from the user, handle 4 possible math operations with that operator,
# and return the result of the calculation
def do_calculator
    puts "What kind of calculation do you want? (+, minus, multiply, division, etc!)"

    valid_operators = ["add", "+", "plus", "addition", "subtract", "-", "minus", "subtraction", "*", "multiply", "x", "times", "multiplication", "divide", "/", "division"]
    operator = gets.chomp.downcase

    until valid_operators.include?(operator)
        puts "Please provide a valid operator."
        operator = gets.chomp.downcase
    end

    a = get_valid_num("What is the first number?")
    b = get_valid_num("What is the second number?")

    case operator
    when "+", "add", "plus", "addition"
        result = a + b
    when "-", "subtract", "minus", "subtraction"
        result = a - b
    when "*", "multiply", "x", "times", "multiplication"
        result = a * b
    when "/", "divide", "division"
        if b == 0
            return "invalid because you divided by zero"
        end
        result = a / b
    else
        puts "I didn't understand. What kind of operation do you want?"
        operator = gets.chomp
    end
    return result
end

# Program execution starts on line 55

puts "Welcome to the Conversational Commandline Calculator!"

# starts off true to enforce going through while loop once
do_next_calculation = true
while do_next_calculation
    puts
    puts "Do you want me to calculate something for you? (yay, nay, etc!)"
    next_calculation = gets.chomp.downcase
    valid_decision = %w[n no nope nay nah y yes yay yeah yep]

    until valid_decision.include?(next_calculation)
        puts "Sorry, I didn't understand that. Want me to do a calculation for ya?"
        next_calculation = gets.chomp.downcase
    end

    case next_calculation
        when "n", "no", "nay", "nope", "nah"
            do_next_calculation = false
            puts "Okay, see you next time!"
        when "y", "yes", "yay", "yeah", "yep"
            puts "Your result is #{do_calculator}."
    end
end
