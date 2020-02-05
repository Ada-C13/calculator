puts "Welcome to Calculator program! "

puts "enter first number: "
num1 = gets.chomp().to_f
puts "enter operator: "
operator = gets.chomp()
puts "enter second number: "
num2 = gets.chomp().to_f

if operator == "+" || operator == "add"
    puts (num1 + num2)
elsif operator == "-" || operator == "substract"
    puts (num1 - num2)
elsif operator == "*" || operator == "multiply"
    puts (num1 * num2)
elsif operator == "/" || operator == "divide"
    if num2 == 0
        puts "invalid number"
    else 
        puts (num2 / num2)
    end

else 
    puts "invalid operator"
end






=begin
Welcome to Calculator program!
Which operator would you like to use?
add(+)
substract(-)
multiple(*)
divide()

Please choose one operator(name or symbole):
=end
