# ruby calculator

#operator
puts "Welcome to the Calculator program! Which operator would you like to use?
1. add(+)
2. subtract(-)
3. multiply (*)
4. divide(/)
Please choose one operator (name or symbol): "
math_operator = gets.chomp


#number 1
puts "Choose the first number for the math operation: "
num_one = gets.chomp.to_i


# number 2
puts "Choose the second number for the math operation: "
num_two = gets.chomp.to_i

until ["add", "+", "subtract", "-", "multiply", "*", "divide", "/"].include?(math_operator)
    puts "Please tell me to add (+), subtract (-), multiply (*), or divide (/)!"
    math_operator = gets.chomp
end


case math_operator
when "add", "+"
  puts num_one + num_two
when "subtract", "-"
  puts num_one - num_two
when "multiply", "*"
  puts num_one * num_two
when "divide", "/"
  puts num_one / num_two
end




