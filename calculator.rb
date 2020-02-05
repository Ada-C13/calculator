# 2/4/2020
# Ada Classwork by Nataliya Pogodina

def print_operation_instructions
  puts "Welcome to Awesome Ruby Calculator"
  puts "=================================="
  puts "Please, choose a math operation:"
  puts "1. add(+)"
  puts "2. substract(-)"
  puts "3. multiply(*)"
  puts "4. divide(/)"
  puts "(type a name or a symbol)"
end

def get_math_operation
  operation_types = ["add", "+", "substract", "-", "multiply", "*", "divide", "/"]
  math_operation = gets.chomp.downcase

  until operation_types.include?(math_operation)
    puts "Please, enter a valid operation!"
    puts "(review the guide above!)"
    math_operation = gets.chomp
  end
  return math_operation
end


def validate(input)
  while input !~ /\A[+-]?\d+(\.\d+)?\z/ # regex
    print "Please, enter a valid number: "
    input = gets.chomp
  end
  return input.to_f
end

# Understanding the regex
# /         start of the regex
# \A        start of the string to be matched
# [+-]?     zero or one of '+' or'-'
# \d+       one or more of digit
# (\.\d+)?  zero or one of 'one dot and 'one or more of digit'' 
# \z        end of the string to be matched
# /         end of the regex

# def check_if_int(input)
#   if input.to_s.include? "."
#     display_number = input.to_f
#   elsif
#     display_number = input.to_i
#   end
#   return display_number
# end

def compute(math_operation, num1, num2)
  case math_operation
  when "add", "+"
    result = num1 + num2
  when "substract", "-"
    result = num1 - num2
  when "multiply", "*"
    result = num1 * num2
  when "divide", "/"
    while num2 == 0
      puts "\nYou can't devide by zero!"
      print "Enter a different number: "
      num2 = validate(gets.chomp)
    end
    result = num1 / num2
  end
  return result
end

def selector_symbol(math_operation)
  case math_operation
  when "add"
    math_operation_display = "+"
  when "substract"
    math_operation_display = "-"
  when "multiply"
    math_operation_display = "*"
  when "divide"
    math_operation_display = "/"
  else
    math_operation_display = math_operation
  end
  return math_operation_display
end

def calculator 
  print_operation_instructions
  math_operation = get_math_operation

  print "Please, enter the first number: "
  num1 = validate(gets.chomp)

  print "Please, enter the second number: "
  num2 = validate(gets.chomp)

  result = compute(math_operation, num1, num2)

  math_operation_display = selector_symbol(math_operation)
  puts "\nHere you go!"
  puts "#{num1} #{math_operation_display} #{num2} = #{result}"
end

calculator
