puts "Welcome to Nora's Basic Calculator."

puts "Please choose one of these commands:"

# the commands the calculator will recognize
maths = ['add', '+', 'subtract', '-', 'multiply', '*', 'divide', '/']

maths.length.times do |i|
  puts "#{maths[i]}"
end

puts "What's your choice? "
command = gets.chomp.downcase

until maths.include?(command)
  puts "Please tell me to add (+), subtract (-), multiply (*), or divide (/)!"
  command = gets.chomp.downcase
end

puts "Enter the first number: "
user_num1 = gets.chomp
intCheck = Integer(user_num1) rescue false
until intCheck
  puts "First number must be an integer: "
  user_num1 = gets.chomp
  intCheck = Integer(user_num1) rescue false
end
user_num1 = user_num1.to_f

puts "Enter a second number: "
user_num2 = gets.chomp
intCheck = Integer(user_num2) rescue false
until intCheck 
  puts "Second number must be an integer: "
  user_num2 = gets.chomp
  intCheck = Integer(user_num2) rescue false
  # I want to figure out how to make sure the input value is not 0 if user chose division (so they cannot divid by 0 down below) 
end
user_num2 = user_num2.to_f

puts "********"

def calc_subtract(num1, num2)
  puts "#{num1} - #{num2} = #{num1 - num2}"
end

def calc_add(num1, num2)
  puts "#{num1} + #{num2} = #{num1 + num2}"
end


case command
  when "add", "+"
    calc_add(user_num1, user_num2)
  when "subtract", "-"
    calc_subtract(user_num1, user_num2)
  when "multiply", "*"
    puts "#{user_num1} * #{user_num2} = #{(user_num1 * user_num2)}"
  when "divide", "/"
    # Only need to check if the bottom number is 0
    if user_num2 != 0
    puts "#{user_num1} / #{user_num2} = #{user_num1 / user_num2}"
    else
    puts "Sorry, you can't divide by 0."
    end
  end 


puts "That's some basic math for you!"
