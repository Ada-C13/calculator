

puts "Welcome to the operator program! which operator would you like to use?"

operatormenu =["add(+)","subtract(-)","multiply(*)","divide(/)"]

def printmenu(arr)
4.times do |i|
puts "#{i+1}. #{arr[i]}"
end
end

printmenu(operatormenu)

puts "which operation would you like to carry on?"
x = gets.chomp
options = ["add", "+","subtract","-","multiply","*","divide","/"]
if !options.include?(x)
  puts "wrong input! try again!"
x = gets.chomp
end


puts "what numbers would you like to calculate"
a= gets.chomp.to_i
while !options.include?(a==Integer)
  puts "wrong input! Please enter an Integer .. try again!"
  a=gets.chomp.to_i
end
b= gets.chomp.to_i
while !options.include?(b==Integer)
  puts "wrong input! Please enter an Integer .. try again!"
end

def operator(m,n,y)
case y 
when "add","+"
  return "the result is #{m+n}"
when "subtract","-"
  return "the result is #{m-n}"
when "multiply","*"
  return "the resutl is #{m*n}"
when "divide","/"
  return "the result is #{m/n}"
end
end

puts operator(a,b,x)

