# CALCULATOR
# Program accepts user input to perform calculator evaluations.

operators = { 
  :addition => ["+", "plus", "add", "addition"],
  :subtraction => ["-", "minus", "subtract", "subtraction"],
  :multiplication => ["*", "times","multiply", "multiplication"],
  :division => ["/", "divide","split","division"],
  :mod => ["%", "mod","modulo"],
  :exponentialize => ["^", "to the power of","exponential","exponentialize"]
}

def calculate(equation, operators)
  case equation["operator"]
    when *(operators[:addition])
      puts "Answer: #{equation["left number"].to_f.round(2) + equation["right number"].to_f.round(2)}"
    when *(operators[:subtraction])
      puts "Answer: #{equation["left number"].to_f.round(2) - equation["right number"].to_f.round(2)}"
    when *(operators[:multiplication])
      puts "Answer: #{equation["left number"].to_f.round(2) * equation["right number"].to_f.round(2)}"
    when *(operators[:division])
      puts "Answer: #{equation["left number"].to_f.round(2) / equation["right number"].to_f.round(2)}"
    when *(operators[:mod])
      puts "Answer: #{equation["left number"].to_f.round(2) % equation["right number"].to_f.round(2)}"
    when *(operators[:exponentialize])
      puts "Answer: #{equation["left number"].to_f.round(2) ** equation["right number"].to_f.round(2)}"
    else
      puts "Nothing to evaluate."
  end
end

puts "CALCULATOR"
puts "**********\n\n"
puts "Welcome to the CALCULATOR. Available operators include:\n\n"

operators.each do |k,v|
  puts "#{k}: #{v.join(", ")}"
end

puts "********\n\n"

equation = {
  "operator" => nil,
  "left number" => nil,
  "right number" => nil,
}

equation.each do |segment, value| #populate each part of the equation with user input, validating as you go
  print "Please give me the #{segment.to_s} > "
  input = gets.strip.to_s

  if segment == "operator" 
    until operators.any? { |keys, values| values.include?(input)} 
      print "Invalid operator. Try again. > "
      input = gets.strip.to_s
    end
  else 
    until input.to_f.to_s == input || input.to_f.round(2).to_s == input || '%.2f' % input.to_f.to_s == input 
      print "'#{input}' (#{input.class}) is not a valid number. Please try again. > "
      input = gets.strip
    end
  end
  equation[segment] = input

end

puts "\n\nEvaluating the following input: #{equation["left number"]} #{equation["operator"]} #{equation["right number"]}"
puts calculate(equation, operators)
