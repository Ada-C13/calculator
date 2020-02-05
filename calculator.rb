puts "Welcome to the Calculator!"

puts "What type of math do you need doing? Please choose from this list and put the name or symbol:"
puts "Add (+)"
puts "Subtract (-)"
puts "Multiply (*)"
puts "Divide (/)"

valid_operator_array = ["add","subtract","multiply","divide","+","-","*","/"]
operator = gets.chomp.downcase

until valid_operator_array.include?(operator)
  puts "Please put in a valid input.(Add, Subtract, Multiply, Divide, +,- ,* ,/ )"
  operator = gets.chomp.downcase
end

def valid_number(number)
  alphabet_array = [*'a'..'z', *'A'..'Z']  # https://stackoverflow.com/questions/4846853/generate-array-of-all-letters-and-digits
  operator_array = ["!","@","#","$","%","^","&","(",")","[","]","{","}","?","_","``","~","|","<",">",",",";",":","=","+","-","*","/"]
  if number == 0 && number.to_i.to_s == number #for when people truly put in 0
    return "yes"
  elsif number.to_i.to_s == number #to catch the integers
    return "yes"
  elsif number.to_f.to_s == number #to catch the floats
    return "yes"
  elsif number == nil || number == "" #to catch the nils and enters
    puts "What kind of number is that? Try again!"
    return "nope"
  elsif  #to catch the letters and symbols
    split_num = number.split("")
    split_num.each do |character|
      if alphabet_array.include?(character) || operator_array.include?(character)
        puts "What kind of number is that? Try again!"
        return "nope"
      end
    end
  end
end

good_1_number = "nope"

until good_1_number == "yes"
  puts "Please provide your first number now."
  num_1 = gets.chomp
  good_1_number = valid_number(num_1)
end

good_2_number = "nope"

until good_2_number == "yes"
  puts "Please provide your second number now."
  num_2 = gets.chomp
  good_2_number = valid_number(num_2)
end

case operator
when "add","+"
  puts "You are adding: #{num_1}+#{num_2} = #{num_1.to_f + num_2.to_f}"
when "subtract","-"
  puts "You are subtracting: #{num_1}-#{num_2} = #{num_1.to_f - num_2.to_f}"
when "multiply","*"
  puts "You are multiplying: #{num_1}*#{num_2} = #{num_1.to_f * num_2.to_f}"
when "divide","/"
  if num_1.to_f == 0 || num_2.to_f == 0
    puts "Excuss me, you are dividing by zero your answer is undefined."
  else
    puts "You are dividing: #{num_1}/#{num_2} = #{num_1.to_f / num_2.to_f}"
  end
end
puts "Thank you for using my calculator!"
