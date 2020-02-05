#simple calculator

#method to list the operators we can use
def list_options
  puts "\nThe operator options we have are:"
  puts "\n1. add(+)\n2. subtract(-)\n3. multiply(*)\n4. divide(/)"
end

#Method to prompt the user for which operator they would like to use.
#If the answer the user gives is not a valid operator,
#prompt again until it is. Offer the option to revisit the list of valid operators.
def grab_operator
  print "\nChoose the type of operator you'd like to use(name): "
  operator = gets.chomp
  operators = ["add", "+", "subtract", "-", "multiply", "*", "divide", "/"]
  until operators.include?(operator)
    puts "\nHmm! It looks like we don't use that type of operator here."
    puts "To see the types of operators you can use, type \"options\"."
    print "Otherwise, enter the operator you would like to use: "
    operator = gets.chomp
    if operator == "options"
      list_options()
    end
  end
  return operator
end

#Method to check whether or a not a value is a number.
def is_number? (num)
  if num == num.to_i.to_s
    return true
  elsif num[0..2] == num[0..2].to_f.to_s
    return true
  else
    return false
  end
end

#Method to prompt the user for two operands.
def grab_operands
  operands = []
  2.times do |i|
    side = ""
    if i == 0
      side = "left"
    else
      side = "right"
    end
    print "\nEnter the operand on the #{side}: "
    operand = gets.chomp
    until is_number?(operand)
      puts "\nSorry, that isn't a valid input."
      puts "\nPlease enter a number you want to appear on the #{side} of your operand: "
      operand = gets.chomp
    end
    operands << operand.to_f
  end
  return operands
end

#method that begins the caluculation process.
def calculate
  list_options()
  operator = grab_operator()
  operands = grab_operands()
  case operator
    when "add", "+"
      solution = operands[0] + operands[1]
      puts "#{operands[0]} + #{operands[1]} equals #{solution.to_s}"
    when "subtract", "-"
      solution = operands[0] - operands[1]
      puts "#{operands[0]} - #{operands[1]} equals #{solution.to_s}"
    when "multiply", "*"
      solution = operands[0] * operands[1]
      puts "#{operands[0]} * #{operands[1]} equals #{solution.to_s}"
    when "divide", "/"
      if operands[1] == 0
        puts "\nSorry friend, one can't divide by zero!"
      else
        solution = operands[0] / operands[1]
        puts "#{operands[0]} / #{operands[1]} equals #{solution.to_s}"
      end
    else
      puts "\nWe seem to have run into an error! Please try again."
  end
  return
end

#introduce the calculator and give options
puts "Welcome to your terminal-friendly calculator!"
puts "\nWe only do simple calculations round these parts."

#Begin the loop so that they can calculate as many numbers as they'd like
answer = ""

until answer == "n"
  calculate()

  print "Would you like to calculate more numbers? (y/n): "
  answer = gets.chomp
end

puts "\nThank you for using our terminal friendly calculator! Come again soon!"
