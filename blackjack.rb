# "J" == 10
# "Q" == 10
# "K" == 10
# "A" == 11

# @deck_array = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]

# @card_1 = @deck_array.sample
# @card_2 = @deck_array.sample
# @card_3 = @deck_array.sample
# @card_4 = @deck_array.sample

# def player_hand()
# puts "Hit enter to deal YOUR cards"
# deal = gets.chomp
# puts @card_1
# puts @card_2
# total = @card_1.to_i + @card_2.to_i
# puts "You have " + total.to_s
# 	if total > 21
# 		puts "Bust!"
# 	end	
# end	

# def dealer_hand()
# puts "Hit enter to deal DEALERS cards"
# deal = gets.chomp
# puts @card_3
# puts @card_4
# total = @card_3.to_i + @card_4.to_i
# puts "Dealer has " + total.to_s
# 	if total > 21
# 		puts "Bust!"
# 	end	
# end

# def winner()
# player_score = @card_1.to_i + @card_2.to_i
# dealer_score = @card_3.to_i + @card_4.to_i
# 	if player_score > dealer_score
# 		puts "You Win!"
# 		player_score += 1
# 	elsif player_score == dealer_score
# 		puts "Tie!"	
# 	else
# 		puts "You Lose!"
# 		dealer_score += 1	
# 	end
# end		



# puts "Welcome to Blackjack!"


# player_hand   #Had a times do loop wround this but it gave me
# dealer_hand   #the exact same outoput every time, same cards, same total.
# winner        #Need to find out how to keep score.
# 			  #Need to figure out how to make letters worth a numerical value in the array, hashes maybe?



#CORRECTED BLACKJACK GAME

def draw
	# This is just an array containing all of the card's in a deck
	card_array = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]

	# Here we are grabbing a random sample from the array
	card_draw = card_array.sample

	# Here we are checking if the sample that was drawn is equal to a Jack, Queen, or King 
	# and if so were setting the new value of card_draw to 10
	case card_draw
		when "J", "Q", "K"
			card_draw = 10
		end

	# Here we are just returning whatever card_draw equals 
	# and this will be saved into "element_card"
	return card_draw
end

def hand(player)
	# Here we are just setting up an empty array to hold all of our card's
	all_cards = []

	# Here we are just setting up an array with the name's that are appropriate for each card you will draw
	card_array = ["first", "second", "third", "fouth", "fifth"]

	# Here we are going to loop through our array of name's and use the name's as part of the card name
	card_array.each do |element|

		# Here we are setting the card name and giving it a random card value from the draw method
		# We are inside a loop that is using "element" as the placeholder for each name in the array
		# So the first time this is ran "element_card" is actually "first_card"
		# The second time it runs through "element_card" will be "second_card" etc.
		element_card = draw

		# Here we are pushing each card into the all_cards array and then we will add the total of all of the card's inside the array
		all_cards.push(element_card)

		# Here we are just displaying the appropriate message based on who is playing, 
		# "player" is being passed to the hit method from where it is called at "player1_hand" or "player2_hand"
		puts "#{player}'s #{element} card is #{element_card}"
		

		# Here we are just checking to see if the card they drew is an Ace 
		# and if so allow them to change it to a 1 or 11
		if all_cards.length >= 2 && all_cards.include?('A')
			all_cards.map! {|element| 
				if element == "A"
					while true 
					puts "Would you like your Ace to be a 1 or 11?"
					card = gets.chomp.to_i
						if card == 1
							break
						elsif card == 11
							break
						end
					end
					card
				else
					element
				end
			}
		end
		# Here we want to end the loop if the player bust or if their total is 21
		# And we are returning the total of the array
		if all_cards.length >= 2
			if all_cards.inject(:+) > 21
				puts "\n#{player} Busted"
				return all_cards.inject(:+)
			elsif all_cards.inject(:+) == 21
				puts "\n#{player} has 21"
				return all_cards.inject(:+)
			end
		end


		# Here we are asking if they want to hit, but we are only asking this if they have at least two card's in their hand
		# You don't hit until after you have two card's
		# So here we are checking the length of the array which contains each card and if it is equal to or greater than 2 
		# The player will be asked if they would like to hit or not
		if all_cards.length >= 2
			puts "\nWould you like to hit? press y or n"
			hit = gets.chomp.downcase
			# If they enter "n" then we will end the loop/method and return the total of the array
			if hit == "n"
				return all_cards.inject(:+)
			end
		end
	end
end

# Here we are just setting the inital score's
player1_score = 0
player2_score = 0

# This is the beginning of the program
while true
	# Here we are calling the hand method and passing it a string, in this case "player1 or 2"
	# The parameter being passed is for the hand method so it know's which message to display
	# We are saving the answer to the hand method into the varibles player1_hand and player2_hand
	# These are the final total's for each player
	player1_hand = hand("Player 1")
	player2_hand = hand("Player 2")

	# Here we are just displaying the total's for each player
	puts "\nPlayer 1's hand #{player1_hand}"
	puts "Player 2's hand #{player2_hand}"

	# Here is just some control flow (if statements) that display's certain messages based off of the comparison between
	# Player 1's hand and Player 2's hand. We are also adding to each player's score based on who win's
	if player1_hand == player2_hand || player1_hand > 21 && player2_hand > 21
		puts "\nIt's a tie"
	elsif player1_hand > player2_hand
		# In here we have to add some extra checks because even though player 1's hand is bigger than player 2's
		# They should still lose if their hand is over 21
		if player1_hand <= 21
			puts "\nPlayer 1 win's the hand"
			player1_score += 1
		else
			puts "\nPlayer 2 win's the hand" 
			player2_score += 1
		end
	elsif player1_hand < player2_hand
		if player2_hand <= 21
			puts "\nPlayer 2 win's the hand"
			player2_score += 1
		else
			puts "\nPlayer 1 win's the hand"
			player1_score += 1
		end
	end

	# Here we are just diplaying the current score's after each play
	puts "\nPlayer 1's score: #{player1_score}"
	puts "Player 2's score: #{player2_score}"

	# We want the program to end when one of the player's have 5 win's
	if player1_score == 5
		puts "\nYou win!"
		break
	elsif player2_score == 5
		puts "\nYou Lose!"
		break
	end

	# This is just a stop so that the program doesn't just run the whole program in one shot,
	# This way it will stop after each hand and wait for you to press enter to continue
	puts "\nPress 'Enter' for next hand"
	enter = gets.chomp

	# Nifty little trick here, This actually clears your command prompt so it doesn't get cluttered. 
	# for mac user's use 'clear' instead of 'cls'
	system('cls')
end












































