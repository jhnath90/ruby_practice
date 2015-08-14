"J" == 10
"Q" == 10
"K" == 10
"A" == 11

@deck_array = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]

@card_1 = @deck_array.sample
@card_2 = @deck_array.sample
@card_3 = @deck_array.sample
@card_4 = @deck_array.sample

def player_hand()
puts "Hit enter to deal YOUR cards"
deal = gets.chomp
puts @card_1
puts @card_2
total = @card_1.to_i + @card_2.to_i
puts "You have " + total.to_s
	if total > 21
		puts "Bust!"
	end	
end	

def dealer_hand()
puts "Hit enter to deal DEALERS cards"
deal = gets.chomp
puts @card_3
puts @card_4
total = @card_3.to_i + @card_4.to_i
puts "Dealer has " + total.to_s
	if total > 21
		puts "Bust!"
	end	
end

def winner()
player_score = @card_1.to_i + @card_2.to_i
dealer_score = @card_3.to_i + @card_4.to_i
	if player_score > dealer_score
		puts "You Win!"
	elsif player_score == dealer_score
		puts "Tie!"	
	else
		puts "You Lose!"	
	end
end		



puts "Welcome to Blackjack!"


player_hand
dealer_hand
winner





