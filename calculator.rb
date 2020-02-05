puts "Welcome to the calculator program. Please specify what type of calculation you would like to do."
puts "Your options are: Add or +, Subtract or -, Multiply or *, and Divide or /"
operation = gets.chomp.to_s.downcase

options = ["add", "+", "subtract", "-", "multiply", "*", "divide", "/", "divide with remainder", "%"]

until options.include?(operation)
  puts "That is not a valid selection. Please enter one of the following: Add or +, Subtract or -, Multiply or *, 
  Divide With Remainder or %, and Divide or /"
  operation = gets.chomp.to_s.downcase
end

def valid_num(num)
  if num != num[0].to_i.to_s
    until num[0].to_i.to_s == num[0]
    puts "That is not a valid number. Please enter your number again."
    num = gets.chomp
    end
  elsif num[0..2] != num[0..2].to_f.to_s
    until num[0..2] == num[0..2].to_f.to_s
    puts "That is not a valid number. Please enter your number again."
    num = gets.chomp
    end
  else
    return num
  end
  return num
end

nums = []

2.times do |i|
  puts "Please enter number #{i + 1}:"
  number = gets.chomp
  number = valid_num(number)
  nums << number.to_f
end

def calculation(operation, num_1, num_2)
  case operation
  when "add", "+"
    return num_1 + num_2
  when "subtract", "-"
    return num_1 - num_2
  when "multiply", "*"
    return num_1 * num_2
  when "divide", "/"
    return num_1 / num_2
  when "divide with remainder", "%"
    return num_1 % num_2
  end
end

result = calculation(operation, nums.at(0), nums.at(1)).to_s

if operation == "add" || operation == "subtract" || operation == "multiply" || operation == "divide" || operation == "divide with remainder"
  puts "When you #{operation} #{nums.at(0)} and #{nums.at(1)}, it equals #{result}"
else
  puts "#{nums.at(0)} #{operation} #{nums.at(1)} = #{result}"
end
