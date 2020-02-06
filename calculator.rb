# CALCULATOR
# Program accepts user input to perform calculator evaluations.

# TODO: 
# -Write the actual evaluation function 
# -refactor validate code 


operators = { 
  :addition => ["+", "plus", "add"],
  :subtraction => ["-", "minus", "subtract"],
  :multiplication => ["*", "times","multiply"],
  :division => ["/", "divide","split"],
  :mod => ["%", "mod","modulo"],
  :exponentialize => ["^", "to the power of","exponential"]
}


puts "CALCULATOR"
puts "**********\n\n"

puts "Welcome to the CALCULATOR. Available operators include:\n\n"

#pretty-print the list of valid operators 
operators.each do |k,v|
  puts "#{k}: #{v.join(", ")}"
end


equation = {
  "operator" => nil,
  "left number" => nil,
  "right number" => nil,
}

equation.each do |equation_piece, value|
  print "Please give me the #{equation_piece.to_s} > "
  input = gets.strip

  if equation_piece == "operator"
    until operators.all? {|operation| operation.has} #TO-DO: figure out how to check input against all data in the operator array to find match
    operators.each do |operator, value|
      puts "\n"
      puts input.class
      puts operator.class
      puts value
      puts value.include? input

  end


  end
end

puts "\n\nEvaluating the following: #{equation["left number"]} #{equation["operator"]} #{equation["right number"]}"


