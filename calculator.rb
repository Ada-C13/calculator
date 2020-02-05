def operator_check(operator)
  case operator
  when "1", "1.", "add", "+"
    return "addition"
  when "2", "2.", "subtract", "-", "delete"
    return "subtraction"
  when "3", "3.", "multiply", "*", "x", "times"
    return "multiplication"
  when "4", "4.", "divide", "/", "%"
    return "division"
  else 
    puts "Please enter a valid selection"
    operator = gets.chomp.downcase.to_s
    operator_check(operator)
  end
end

puts "Let's do some MATH!"
  
puts "Please pick an operator:
1. Add (+)
2. Subtract(-)
3. Multiply (*) 
4. Divide (/)"
  
operator = gets.chomp.downcase.to_s
operator_n = operator_check(operator)


## getting input 1
puts "Please pick the first number"
a = gets.chomp

 ## checking for valid imput  
if a.to_i.to_s != a.strip
  puts "Please enter a valid number"
else
  a = a.to_i
end

## getting input 2
puts "Please pick the second number"
b = gets.chomp

if b.to_i.to_s != b.strip
  puts "Please enter a valid number"
else
  b = b.to_i
end
  
##calculator
def calcluator(operator, a, b) 
  if operator == "addition"
    puts "Your answer is #{a + b}"
  elsif operator == "subtraction"
    puts "Your answer is #{a - b}"
  elsif operator == "multiplication"
    puts "Your answer is #{a * b}"
  elsif operator == "division" && b != 0
    puts "Your answer is #{a / b}"
  elsif operator == "division" && b == 0
    puts "Your answer is 0"
  end 
end
  
calcluator(operator_n, a, b)
  

