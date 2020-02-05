puts "Welcome to the Calculator program! Which operator would you like to use?"
puts "1. add(+)"
puts "2. substracte(-)"
puts "multiply(*)"
puts "divide(/)"
 
puts "Please choose one operatore (name or symbol):"
operator = gets.chomp

if operator == "add" || operator == "+"
  puts "We're adding numbers, please enter the firs number"
  first_nr = gets.chomp.to_i
  puts "Please enter the seconde number"
  seconde_number = gets.chomp.to_i
  result = first_nr + seconde_number
  puts "Result is #{result}"
elsif operator == "subtract" || operator == "-"
  puts "We're subtracting numbers, please enter the firs number"
  first_nr = gets.chomp.to_i
  puts "Please enter the seconde number"
  seconde_number = gets.chomp.to_i
  result = first_nr - seconde_number
  puts "Result is #{result}"
elsif operator == "multiply" || operator == "*"
  puts "We're multiplying numbers, please enter the firs number"
  first_nr = gets.chomp.to_i
  puts "Please enter the seconde number"
  seconde_number = gets.chomp.to_i
  result = first_nr * seconde_number
  puts "Result is #{result}"
elsif operator == "divide" || operator == "/"
  puts "We're dividing numbers, please enter the firs number"
  first_nr = gets.chomp.to_i
  puts "Please enter the seconde number"
  seconde_number = gets.chomp.to_i
  result = first_nr / seconde_number
  puts "Result is #{result}"
else
  puts "That is not an operator, plz instert operator?!"
  operator = gets.chomp
end
