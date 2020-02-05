# method defining which operator user chooses
def operatorchoice(operator)
  case operator
  when "add", "+", "addition", "adding", "add(+)"
    return "+"
  when "subtract", "-", "subtraction", "subtracting", "subtract(-)"
    return "-"
  when "multiply", "*", "multiplication", "multiplying", "multiply(*)"
    return "*"
  when "divide", "/", "division", "dividing", "divide(/)"
    return "/"
  else
    return "invalid"
  end
end


# introduction to user and prompt choice of operator
puts "Welcome to the Calculator! Which operator would you like to use?
add(+)
subtract(-)
multiply(*)
divide(/)
Please choose one operator(name OR symbol):"

operator_entered = gets.chomp
operator_active = operatorchoice(operator_entered)
while operator_active == "invalid"
  puts "That is not a valid operator. Please choose again one operator(name or symbol):"
  operator_entered = gets.chomp
  operator_active = operatorchoice(operator_entered)
end

puts "Please enter number 1: "
  ans1 = gets.chomp
  num1 = ans1.to_f
  until ans1.to_i.to_s == ans1 || ans1.to_f.to_s == ans1
    puts "Please re-enter number 1: "
    ans1 = gets.chomp
    num1 = ans1.to_f
  end

puts "Please enter number 2"
  ans2 = gets.chomp
  num2 = ans2.to_f
  until ans2.to_i.to_s == ans2 || ans2.to_f.to_s == ans2
    puts "Please re-enter number 2: "
    ans2 = gets.chomp
    num2 = ans2.to_f
  end

# defining method for calculation
def calculator(operator_active, num1, num2)
  case operator_active
    when "+"
      return num1 + num2
    when "-"
      return num1 - num2
    when "*"
      return num1 * num2
    when "/"
        return num1 / num2
  end
end

puts "Answer: #{num1} #{operator_active} #{num2} = #{calculator(operator_active, num1, num2)}"
