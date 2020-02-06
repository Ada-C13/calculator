puts "Welcome to Nora's Basic Calculator."

puts "Please choose one of these commands:"

# the commands the calculator will recognize
maths = ['add', '+', 'subtract', '-', 'multiply', '*', 'divide', '/']

# NOTE I struggled with getting validation to work
# validate from class
# def validate_num[num]
#  is_valid = num.to_i.to_s == input || num.to_f.to_s == num
#  return is_valid
#end

# print the list of commands
maths.length.times do |i|
  puts "#{maths[i]}"
end

# user picks type of operation
puts "What's your choice? "
command = gets.chomp.downcase

# verify the user's operation is in our command list
until maths.include?(command)
  puts "Please tell me to add (+), subtract (-), multiply (*), or divide (/)!"
  command = gets.chomp.downcase
end

puts "Enter the first number: "
user_num1 = gets.chomp.to_i

# NOTE - second part of my validation code I couldn't get to work
# if validate_num[user_num1] == false
# puts "Oops. Please enter a number: "
# user_num1 = gets.chomp
# else
  puts "Enter a second number: "
  user_num2 = gets.chomp.to_i
# end


puts "**********"

# NOTE since my validation wasn't working I made some not very useful methods just to demonstrate making a method
def calc_subtract(num1, num2)
  puts "#{num1} - #{num2} = #{num1 - num2}"
end

def calc_add(num1, num2)
  puts "#{num1} + #{num2} = #{num1 + num2}"
end

# choose the type of operation and output based on the command
case command
  when "add", "+"
    calc_add(user_num1, user_num2)
  when "subtract", "-"
    calc_subtract(user_num1, user_num2)
  when "multiply", "*"
    puts "#{user_num1} * #{user_num2} = #{(user_num1 * user_num2)}"
  when "divide", "/"
    if user_num1 != 0 && user_num2 != 0
    puts "#{user_num1} / #{user_num2} = #{user_num1 / user_num2}"
    else
    puts "Sorry, you can't divide by 0."
    end
  end 

puts "That's some basic math for you!"
