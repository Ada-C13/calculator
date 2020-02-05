#calculator design
puts "         CALCULATOR               "
puts "      (AC) (+/-) (%) (/)          "
puts "__________________________________"
puts "                       division(/)"
puts "                       multiply(*)"
puts "                       subtract(-)"
puts "                       addition(+)"
puts "                    expoponets(**)"
# puts "                  parenthises( )"

#user_inputs
#user enter numbers, checks for valid entries 
print "Enter a number_"
num_one = gets.chomp

#user inputs operator that is then checked againist list of command options
print "Operator:"
command = ["add","+","sub","-", "multi","*","divide","/","expo","**","mod","modulo","%","exponent"]
operation = gets.chomp.downcase

#search for commands using operation variable
until command.include?(operation) == true
    puts "Please enter a name operator"
    operation = gets.chomp.downcase
end

#user enters second number
print "Enter a number_"
num_two = gets.chomp

# checking for true intergers 
def num_check(num_one,num_two)
    num_one.to_i.to_s == num_one &&num_two.to_i.to_s == num_two || num_one.to_f.to_s == num_one &&num_two.to_f.to_s == num_two
end

# failsafe loop if num_check false
until num_check(num_one,num_two) == true
  print "Re-enter number"
  num_one = gets.chomp
  print "Please name an operator"
  operation = gets.chomp.downcase
  print "Re-enter number"
  num_two = gets.chomp
end

# methods for math operations 
def add(num_one,num_two)
 puts "#{num_one} + #{num_two} = #{num_one + num_two}"
end

def sub(num_one,num_two)
 puts "#{num_one} - #{num_two} = #{num_one - num_two}"
end

def multi(num_one,num_two)
    puts "#{num_one} * #{num_two} = #{num_one - num_two}"
end

def div(num_one,num_two)
    # return num_one / num_two
     puts "#{num_one} / #{num_two} = #{num_one / num_two}"
    rescue ZeroDivisionError
    puts "ERROR #{num_one} can not be divided by #{num_two}"
end

def exponents(num_one,num_two)
     puts "#{num_one} ** #{num_two} = #{num_one ** num_two}"
end
def modulo(num_one,num_two)
     puts "#{num_one} % #{num_two} = #{num_one % num_two}"
end
# def paren(num_one,num_two)
#     return (num_one operation num_two)
# end

# new variables assiged
num_one = num_one.to_i
num_two = num_two.to_i


#math operation with results
case operation
when "add","addition", "+"
puts add(num_one,num_two)
when "sub","subtraction", "-"
puts sub(num_one,num_two)
when "multi","multiply", "*"
puts multi(num_one,num_two)
when "div","divide","/"
puts div(num_one,num_two)
when "expo","exponent","**"
puts exponents(num_one,num_two)
when "modulo","mod","%"
puts modulo(num_one,num_two)
end 
