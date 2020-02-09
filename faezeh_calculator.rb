# When a user runs this program, the program should ask the user for the following things:

# 1- a math operation
# 2- a number for the math operation
# 3- a second number for the math operation

puts "I am glad you chose my calculator, because it's awesome!
Which operator woudl you like to use?
1. add(+)
2. subtract(-)
3. multiply(*)
4. divide (/)
Please choose one operator (name or symbol)"

command = gets.chomp.downcase

# operators = ["add", "+", "subtract", "-",
#  "multiply", "*", "devide", "/"]

# operators.each do |i|
#   puts i + "(" #{i+1} + ")"
# end

until ["add", "+", "subtract", "-", "multiply", "*", "divide", "/", ].include?(command)
  puts "What you entered is not an option! 
  Please tell me to add (+), subtract (-) multiply (*) or devide (/)!"
  command = gets.chomp.downcase
end

class Object
  def is_number?
    to_f.to_s == to_s || to_i.to_s == to_s
  end
end

num_1_str = "first"
until num_1_str.is_number?
  puts "Please provide your first number:"
  num_1_str = gets.chomp
end
num_1 = num_1_str.to_f

num_2_str = "second"
until num_2_str.is_number?
  puts "Please provide your second number:"
  num_2_str = gets.chomp
end 
num_2 = num_2_str.to_f

case command
when "add", "+"
  puts "We're adding numbers"
  puts "#{num_1} + #{num_2}: #{num_1 + num_2}"
when "subtract", "-"
  puts "We're subtracting numbers"
  puts "#{num_1} - #{num_2}: #{num_1 - num_2}"
when "multiply", "*"
  puts "We're multiplying numbers"
  puts "#{num_1} * #{num_2}: #{num_1 * num_2}"
when "divide", "/"
  puts "We're dividing numbers"
  puts "#{num_1} / #{num_2}: #{num_1 / num_2}"
end
