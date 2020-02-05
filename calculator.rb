#define the operation to use for calculation later 
def add(a,b)
    return a + b
end 

def subtract(a,b)
    return a - b
end 

def multiply(a,b)
    return a * b
end 

def divide(a,b)
    return a / b
end 


#introduce the program
puts "Welcome to the calculator program where you are able to either add, subtract, divide, or multiply two numbers."

#take in the numbers and operation the user would like to perform 
puts "Input your first number--"
num_1=gets.chomp

#validate their input is actually a number 
until num_1.to_i.to_s == num_1 || num_1.to_f.to_s == num_1
    puts "Please only enter a valid number"
    num_1 = gets.chomp
end
num_1 = num_1.to_f

puts "Input the operator you would to use: enter 'add' or '+', 'subtract' or '-', 'divide' or '/', or 'multiply' or '*':"
command=gets.chomp

#verify their input is a valid operator 
until %w(add + subtract - divide / multiply *).include? (command)
    puts "Please choose a valid operation from the following choices: 'add'/'+', 'subtract'/'-', 'divide'/''/', or 'multiply'/'*' "
    command=gets.chomp
end 

puts "Input your second number--"
num_2=gets.chomp

#verify their second input is a number 
until num_2.to_i.to_s == num_2 || num_2.to_f.to_s == num_2
    puts "Please only enter a valid number"
    num_2 = gets.chomp
end
num_2= num_2.to_f

#use user inputs to perform the calculations 
case command 
when "add", "+"
    puts add(num_1, num_2)
when "subtract", "-"
    puts subtract(num_1, num_2)
when "divide", "/"
  if num_2 == 0 #if the user wants to divide a number by zero
    puts "0"
  else
    puts divide(num_1, num_2)
  end 
when "multiply", "*"
    puts multiply(num_1,num_2)
end 
