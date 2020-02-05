puts "Welcome to the Calculator program! Which operator would you like to use? (add(+), substract(-), multiply(*), divide(/) or exponify(**)."

puts "Please choose one operator(name or symbol):"
operator_user = gets.chomp.downcase 

until ["add", "+", "subtract", "-", "multiply", "*", "divide", "/", "%", "exponify", "**"].include?(operator_user)
    puts "Please tell me to add (+), subtract (-), multiply (*), divide (/) or exponify (**)!"
    operator_user = gets.chomp.downcase
end

def float_or_integer(num)
    num % 1.0 == 0 ? num.to_i : num.to_f 
end 

def is_number?(string)
    true if Float(string) rescue false 
end

puts "Please enter a number:"
first_num = gets.chomp 

until is_number?(first_num)
    puts "Please re-enter a valid number:"
    first_num = gets.chomp 
end 

first_num = first_num.to_f

puts "Please enter a second number:"
sec_num = gets.chomp 

until is_number?(sec_num)
    puts "Please re-enter a valid number:"
    sec_num = gets.chomp 
end 
sec_num = sec_num.to_f

total = 0 

case operator_user
when "add", "+"
    total = first_num + sec_num 
    operator_user = "+"
when "subtract", "-"
    total = first_num - sec_num
    operator_user = "-" 
when "multiply", "*"
    total = first_num * sec_num 
    operator_user = "*"
when "divide", "/", "%"
    if sec_num == 0
        puts "Please enter a number greater than 0"
        sec_num = gets.chomp.to_f
        until sec_num > 0 
            sec_num = gets.chomp.to_f
        end 
    end
    total = first_num / sec_num 
    operator_user = "/" 
when "exponify", "**"
    total = first_num ** sec_num 
    operator_user = "**"
end

puts "Your result is #{float_or_integer(first_num)} #{operator_user} #{float_or_integer(sec_num)} = #{float_or_integer(total)}"

