#THIS IS BROKEN

def dice_roll()
	hand_toss = gets.chomp
	role1 = @dice_array1.sample
    role2 = @dice_array.sample 
    puts "Rolled a " + role1.to_s + " and a" + " " + role2.to_s
    
    @total = role1 + role2
    puts "Total is" + " " + @total.to_s
end	

 def winner()
 	user_1_score = @total.to_s
	comp_score = @total.to_s
		if user_1_score > comp_score
			puts "You win!"
		elsif user_1_score < comp_score
			puts "You lose!"
		else
			puts "Tie!"	
		end	
end		

		

@dice_array1 = [1, 2, 3, 4, 5, 6]
@dice_array = [1, 2, 3, 4, 5, 6]


puts "Welcome to the dice game"

puts "Please enter your name"

name = gets.chomp

puts "Hello #{name}"

puts "Role the dice, hit enter to roll"

dice_roll

puts "Computer roll, hit enter to roll"

dice_roll
winner











