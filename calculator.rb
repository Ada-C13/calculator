def check_type(number)
  check = number 
  while check.match(/[a-zA-Z]+/)
    puts "Invalid input"
    puts "Please enter number again:"
    number = gets.chomp
    check = number
  end

  if number.include? (".")
    return number.to_f
  else
    return number.to_i
  end
end 

puts "Please enter an math operation name or symbol"
puts "1. add (+)
2. subtract (-)
3. multiply (*)
4. divide (/)
5. power (**)
"
puts "Enter:"
operation = gets.chomp.downcase
puts "Please enter the first number:"
first =  check_type(gets.chomp)

puts "Please enter the second number:"
second = check_type(gets.chomp)


if operation == "add" || operation == "+"
  puts "#{first} + #{second} = #{first + second}"
elsif operation == "subtract" || operation == "-"
  puts "#{first} - #{second} = #{first - second}"
elsif operation == "multiply" || operation == "*"
  puts "#{first} * #{second} = #{first * second}"
elsif operation == "divide" || operation == "/"
  if second == 0 || second == 0.0
    abort("CANNOT DIVIDE BY ZERO")
  end
  puts "#{first} / #{second} = #{first/second}"
elsif operation == "power" || operation == "**"
  puts "#{first}^#{second} = #{first**second}"
else 
  abort("NOT COMPUTABLE")
end  
