
puts "What's today's temperature?"
temp = gets.chomp.to_i 
puts "Is it raining?"
weather = gets.chomp

	


def going_hiking (temp, weather)
	
	
	if weather == "yes".downcase
		
		puts "Can't go hiking, it's raining"

	elsif temp > 105 || temp < -5 
		
		puts "#{temp} degrees is not a valid temperature for Ashville."
	
	elsif temp > 80
		
		puts "#{temp} degrees is too hot for hiking"
	
	elsif temp >= 50 
		
		puts "#{temp} degrees is perfect for hiking!"
	
	else temp < 50
	
		puts "#{temp} degrees is way too cold for hiking!"	
	

	end	
	
end


 going_hiking(temp, weather)