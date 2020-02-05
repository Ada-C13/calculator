# Calculator Assignment

# Welcome 
puts
puts "Welcome to the Trivial Pursuit Calculator!"
puts

# Create variable storage
first_num = ""
sec_num = ""

# Create check for whether user input is convertible or not.
def numeric_check(first_num)
  Float(first_num) != nil rescue false
end

# Create check to discern whether user input is a float or an integer. 
def float?(first_num)
  first_num.include? "."
end

# Run checks to ensure that input is numeric in nature
until numeric_check(first_num) && numeric_check(sec_num) 
  puts "Please enter the first number."
  first_num = gets.chomp
  puts "Please enter the second number." 
  sec_num = gets.chomp
end

# Run checks on input to determine whether values are integers or floats
if float?(first_num)
  first_num = first_num.to_f
else 
  first_num = first_num.to_i 
end 

if float?(sec_num)
  sec_num = sec_num.to_f
else 
  sec_num = sec_num.to_i 
end 

# Ask user what they'd like done with the numbers they input
puts "What would you like to do with these numbers?"
command = gets.chomp

# Case to assess how input is processed 
case command 
when "ADD", "Add", "add", "+", "addition"
  result = first_num + sec_num 
  puts "#{result}"
  puts "You're an Adie, alrighty."
  puts "#{first_num} + #{sec_num} = #{result}."
when "SUBTRACT", "Subtract", "subtract", "-", "subtraction"
  result = first_num - sec_num
  puts "#{result}."
  puts "Are you a graphic designer? 'Cause you just went lessy on us."
  puts "#{first_num} - #{sec_num} = #{result}."
when "MULTIPLY", "Multiply", "multiply", "*", "multiplication"
  result = first_num * sec_num
  puts "#{result}"
  puts "Looking to be #{result} times greater, huh? Too bad: you're already greater than your number."
  puts "#{first_num} * #{sec_num} = #{result}."
when "DIVIDE", "Divide", "divide", "/", "division"
  if sec_num == 0
    puts "Unable to divide by 0."
    return
  end
  result = first_num / sec_num
  puts "#{result}"
  puts "As much a trekkie as a techie, eh? Looks like you got divvied up into as many Enterprises as you got beamed up into."
  puts "#{first_num} / #{sec_num} = #{result}."
else 
  puts "Whoa! You're too cool for me; I don't know how to perform that action yet." 
end
