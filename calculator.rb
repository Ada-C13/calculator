def add(num_1, num_2)
  return num_1 + num_2
end

def subtrat(num_1, num_2)
  return num_1 - num_2
end

def multiply(num_1, num_2)
  return num_1 * num_2
end

def divide(num_1, num_2)
  return num_1 / num_2
end

def exponify(num_1, num_2)
  return num_1 ** num_2
end

def modulus(num_1, num_2)
  return num_1 % num_2
end

operator_array = %w[Add + Subtract - Multiply * Divide / Exponify ^ Modulus % 1 2 3 4 5 6]

puts "Welcome to the calculator! Time to do some math."
puts "\nWhich operator would you like to use?"

puts "1. Add (+)"
puts "2. Subtract (-)"
puts "3. Multiply (*)"
puts "4. Divide (/)"
puts "5. Exponify (^)"
puts "6. Modulus (%)"

user_operator = gets.chomp.capitalize
until operator_array.include?(user_operator)
  puts "Please enter a valid operator."
  user_operator = gets.chomp.capitalize
end

puts "\nWhat number would you like to have be first?"
num_1 = gets.chomp
if (num_1 != 0) && (num_1.to_s.to_f == 0.0)
  puts "Please input a valid number, or input 0 again."
  num_1 = gets.chomp
end

puts "\nWhat number would you like to have be second?"
num_2 = gets.chomp
if (num_2 != 0) && (num_2.to_s.to_f == 0.0)
  puts "Please input a valid number, or input 0 again."
  num_2 = gets.chomp
end

num_1 = num_1.to_f
num_2 = num_2.to_f

puts "\nRESULT: "

case user_operator 
  when "Add", "+", "1"
    result = add(num_1, num_2)
    puts "#{num_1} + #{num_2} = #{result}"
  when "Subtract", "-", "2"
    result = subtrat(num_1, num_2)
    puts "#{num_1} - #{num_2} = #{result}"
  when "Multiply", "*", "3"
    result = multiply(num_1, num_2)
    puts "#{num_1} * #{num_2} = #{result}"
  when "Divide", "/", "4"
    result = divide(num_1, num_2)
    if num_2 == 0
      puts "Err"
    elsif
      puts "#{num_1} / #{num_2} = #{result}"
    end
  when "Exponify", "^", "5"
    result = exponify(num_1, num_2)
    puts "#{num_1}^#{num_2} = #{result}"
  when "Modulus", "%", "6"
    result = modulus(num_1, num_2)
    puts "#{num_1} % #{num_2} = #{result}"
end
