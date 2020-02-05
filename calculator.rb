puts "================================="
puts "Welcome to the Calculator program!"
puts "================================="

puts "Check out operators we have: "
operators = ["add(+)", "subtract(-)", "multiply(*)", "divide(/)", "exponify(**)", "modulus(%)"]

# Print out the operators list
operators.each_with_index do |operator, i|
  puts "#{i + 1}. #{operator}"
end 


# Create a calculator method
def calculator(num_1, num_2, operator)
  case operator 
    when "add", "+"
      result = num_1 + num_2
    when "subtract", "-"
      result = num_1 - num_2
    when "multiply", "*" 
      result = num_1 * num_2
    when "divide", "/"
      if num_2 != 0 
        result = num_1 / num_2
      else 
        result = "Please enter a value other than 0 when dividing"  
      end 
    when "exponify", "**", "^"
      result = num_1 ** num_2
    when "modulus", "%"
      result = num_1 % num_2
    end 

  return result
end


puts "\n"
print "Please choose one operator(name or symbol): "
operator = gets.chomp.downcase
puts "\n"


# Rescue until we get a valid operator
until ["add", "+", "subtract", "-", "multiply", "*", "divide", "/", "exponify", "**", "^", "modulus", "%"].include?(operator)
  puts "(!) Please enter a valid operator"
  print "Please choose one operator(name or symbol): "
  operator = gets.chomp
end 

# Get a user input for a number
print "Number #1: "
num_1 = gets.chomp


# Rescue until we get a valid number
while !num_1.match(/[0-9]/)
  puts "(!) Please enter a valid number"
  print "Number #1: "
  num_1 = gets.chomp
end 

print "Number #2: "
num_2 = gets.chomp

while !num_2.match(/[0-9]/)
  puts "(!) Please enter a valid number"
  print "Number #2: "
  num_2 = gets.chomp
end 

puts "\n"

# Convert from string to float
num_1 = num_1.to_f
num_2 = num_2.to_f

# Call the <calculator> method
puts "==> Result: #{calculator(num_1, num_2, operator)}"
