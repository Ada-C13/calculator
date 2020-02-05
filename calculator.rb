again = "y"

while again == "y" do 

    puts "Welcome to the Calculator!"
    puts "Which operator would you like to use?"
    list = ["add, +","substract, -","multiply *","divide /"]
    list.length.times do |n|
        puts "#{n+1}. #{list[n]}"
    end 

    user_operator = gets.chomp.downcase


    until ["add","+","substract","-","multiply","*", "divide","/"].include?(user_operator)
        puts "Enter an operator please!!"
        user_operator = gets.chomp.downcase
    end

    nums = []

    # function to ask for nums and store it in num array
    def print_asking_num(nums)
        puts "Enter Num 1"
        nums << gets.chomp.to_f
        puts "Enter Num 2"
        nums.push(gets.chomp.to_f)
    end 

    # print_asking_num(nums)
    case user_operator
        when "add" , "+"
            puts "Adding Numbers!" 
            print_asking_num(nums)
            result = nums[0] + nums[1]
            puts "#{nums[0]} + #{nums[1]}= #{'%.5f' % result}"
        when "substract", "-"
            puts "let's substract!"
            print_asking_num(nums)
            result = nums[0] - nums[1]
            puts "#{nums[0]} - #{nums[1]}= #{'%.5f' % result}"
        when 
            "multiply","*"
            puts "Multiplying~"
            print_asking_num(nums)
            result = nums[0] * nums[1]
            puts "#{nums[0]} * #{nums[1]}= #{'%.5f' % result}"
        when
            "divide", "/"
            puts "Cool, let's divide."
            print_asking_num(nums) 
            result = nums[0] / nums[1]
            puts "#{nums[0]} / #{nums[1]}= #{'%.5f' % result}"
    end 

    puts "Play again? y/n"
    again = gets.chomp.downcase

end 

puts "thanks for playing!"
