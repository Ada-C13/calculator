puts "Welcome to my first calculator. Please be gentle."

puts "What operator would you like to use?"
command = gets.chomp

# handles erroneous operators and asks them to enter a proper operator
until ["add", "+", "subtract", "-", "multiply", "*", "divide", "/"].include?(command)
    puts "Please tell me to add (+), subtract (-), multiply (*), or divide (/)!"
    command = gets.chomp
  end
 
# asks user to enter their first number
# while statement prints if the first number is a valid integer
print "Give me your first number "
first_num = gets.chomp 

while !(Float(first_num) rescue false)
    puts "Sorry, not valid input." 
    print "Give me your first number "
    first_num = gets.chomp 
end

print "Give me your second number "
second_num = gets.chomp 

while !(Float(second_num) rescue false)
    puts "Sorry, that is not a number." 
    print "What's your second number? "
    second_num = gets.chomp 
end

if command == "+" ||command == "add"
   print (first_num.to_i + second_num.to_i)
elsif command == "-" || command == "subtract"  
    print (first_num.to_i - second_num.to_i)
elsif command == "*" || command == "multiply"
    print (first_num.to_i * second_num.to_i)
else
  if second_num.to_i == 0
    print "Sorry, you cannot divide by zero."
    else
    print (first_num.to_i / second_num.to_i)
end
end
