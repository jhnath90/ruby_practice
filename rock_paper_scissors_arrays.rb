# my_array = []

# my_array[0] = "Hello"
# my_array[1] = 45
# my_array[2] = [1, 2, 3]

# puts my_array


# fruits = ["Banana", "Pear", "Apple", "Pineapple"]

# fruits << "Mango"
# fruits.push("Orange")
# fruits.pop

# puts fruits.reverse

# puts "Rock " + "Paper " + "Scissors!!"

# puts "Pick Rock Paper or Scissors."
# gets.chomp.downcase

# my_array = ["rock", "paper", "scissors"]
#   	puts my_array.sample

# my_array_2 = ["rock", "paper", "scissors"]
# 	puts my_array_2.sample 


#ROCK PAPER SCISSORS GAME USING ARRAY, WHILE LOOP, ELSIF STATEMENT.

rps = ["rock", "paper", "scissors"]

puts "Please choose rock paper or scissors"
user_answer = gets.chomp.downcase
comp_answer = rps.sample

user_score = 0
comp_score = 0

puts comp_answer

while user_answer != "quit"
	if user_answer == "rock" && comp_answer == rps[2]
		puts "You win"
		user_score +=1
	
	elsif user_answer == "rock" && comp_answer == rps[1]
		puts "You lose"
		comp_score +=1
	
	elsif user_answer == "scissors" && comp_answer == rps[1]
		puts "You win"
		user_score +=1
	
	elsif user_answer == "scissors"  && comp_answer == rps[0]
		puts "You lose"
		comp_score +=1
	
	elsif user_answer == "paper" && comp_answer == rps[0]
		puts "You win"
		user_score +=1
	
	elsif user_answer == "paper"  && comp_answer == rps[2]
		puts "You lose"
		comp_score +=1
	
	elsif user_answer == comp_answer
		puts "Tie"
	
	end
		
		puts "Your score is #{user_score}, Comp score is #{comp_score}"
	if user_score == 3
	puts "You win the game"
		break
	elsif comp_score == 3
		puts "You lose the game"
	end		
		
		puts "Enter Rock, Paper, Scissors, or quit to exit"
		user_answer = gets.chomp.downcase
		
	if user_answer == "quit"
		break
	end	
		
		comp_answer = rps.sample
		puts comp_answer
end	








