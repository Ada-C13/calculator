def addition (number1, number2)
    return (number1 + number2)
end

def subtract (number1, number2)
    return (number1 - number2)
end

def multiply (number1, number2)
    return (number1 * number2)
end

def divide (number1, number2)
    return (number1 / number2)
end

def quit
    puts "That is not a valid entry! Please try again"
    exit
end

puts "Welcome to the Calculator program! Which program would you like to use?"
puts "\n 1. add(+) \n 2. subtract(-) \n 3. multiply(*) \n 4. divide(/) \n"
puts "Please choose one operator (name or symbol):"
operator = gets.chomp.downcase

case operator
when "add", "+"
  puts "What numbers would you like to add"
  number1 = Integer(gets.chomp) rescue nil
  number2 = Integer(gets.chomp) rescue nil
  
  if number1.is_a?(Integer) && number2.is_a?(Integer)
     puts "#{number1} + #{number2} = #{addition(number1,number2)}"
  else 
     quit
  end

when "subtract", "-"
  puts "What numbers would you like to subtract?"
  number1 = Integer(gets.chomp) rescue nil
  number2 = Integer(gets.chomp) rescue nil
  
  if number1.is_a?(Integer) && number2.is_a?(Integer)
     puts "#{number1} - #{number2} = #{subtract(number1,number2)}"
  else 
     quit
  end

when "multiply", "*"
    puts "What numbers would you like to multiply?"
    number1 = Integer(gets.chomp) rescue nil
    number2 = Integer(gets.chomp) rescue nil
    
    if number1.is_a?(Integer) && number2.is_a?(Integer)
       puts "#{number1} * #{number2} =  #{multiply(number1,number2)}"
    else 
       quit
    end

when "divide", "/"
    puts "What numbers would you like to divide?"
    number1 = Integer(gets.chomp) rescue nil
    number2 = Integer(gets.chomp) rescue nil
    
    if number1.is_a?(Integer) && number2.is_a?(Integer)
        if number2 != 0
            if number1 % number2 > 0
              puts "#{number1} / #{number2} =  #{divide(number1.to_f,number2.to_f)}"
            else
              puts "#{number1} / #{number2} =  #{divide(number1,number2)}"
            end
        else
          puts "Divide by zeo error!"
        end
    else 
       quit
    end

else 
    puts "That is not a valid option!"
end
