
# Method for grabbing operation from user, calls the right operating method 
# based on user input
def operation()
  result = []
  puts "Please enter the operation you'd like to perform (name or symbol):"
  input = gets.chomp.upcase()
  case input
  when "+", "ADD"
    result = add()
  when "-", "SUBTRACT"
    result = sub()
  when "*", "MULTIPLY"
    result = mult()
  when "/", "DIVIDE"
    result = div()
  when "%", "MODULO"
    result= mod()
  when "^", "EXPONENT"
    result = exp()
  else 
    puts "Oops, that's not right."
    result = operation()
  end
  return result
end

# Method for asking user for numbers, testing numbers, 
# putting numbers into array, returning array
def num_input()
  inputs = []
  puts "Enter your two numbers. The order you enter will be
  operated on as follows: Number1 <operation> Number2
  Press return after entering each number."
  inputs[0] = gets.chomp
  inputs[1] = gets.chomp
  if (inputs[0] =~ /\d{0,}[.]\d{1,}/) != nil || (inputs[1] =~ /\d{0,}[.]\d{1,}/) != nil
    inputs[0] = inputs[0].to_f
    inputs[1] = inputs[1].to_f
  elsif (inputs[0] =~ /\d{1,}/) != nil && (inputs[1] =~ /\d{1,}/) != nil
    inputs[0] = inputs[0].to_i
    inputs[1] = inputs[1].to_i
  else
    puts "Oops, there's something wrong with your input.
    Please enter two numbers."
    inputs = num_input()
  end
  return inputs
end

# Addtion method, returns array of strings
def add()
  nums = num_input()
  nums[2] = nums[0] + nums[1]
  nums[3] = " + "
  return nums.collect{|e|e.to_s}
end

# Subtraction method, returns array of strings
def sub()
  nums = num_input()
  nums[2] = nums[0] - nums[1]
  nums[3] = " - "
  return nums.collect{|e|e.to_s}
end

# Multiplication method, returns array of strings
def mult()
  nums = num_input()
  nums[2] = nums[0] * nums[1]
  nums[3] = " * "
  return nums.collect{|e|e.to_s}
end

# Division method, returns array of strings
def div()
  nums = num_input()
  if nums[1] == 0
    puts "Oops, we can't divide by 0."
    nums = num_input()
  end
  if nums[0] % nums[1] != 0
    nums = nums.collect{|e|e.to_f}
  end
  nums[2] = nums[0] / nums[1] 
  nums[3] = " / "
  return nums.collect{|e|e.to_s}
end

# Modulus (Remainder) method, returns array of strings
def mod()
  nums = num_input()
  nums[2] = nums[0] % nums[1] 
  nums[3] = " % "
  return nums.collect{|e|e.to_s}
end

# Exponent method, returns array of strings
def exp()
  nums = num_input()
  nums[2] = nums[0] ** nums[1] 
  nums[3] = "^"
  return nums.collect{|e|e.to_s}
end

# Main Program, interact with user
puts "Welcome to the Calculator Program. Here are the operations
I can do:
  add (+)
  subtract (-)
  multiply (*)
  divide (/)
  modulo (%)
  exponent (^) "
  
  equation = operation()
  puts "Here's your answer:"
  puts equation[0] + equation[3] + equation[1] + " = " + equation[2]
  
  
  