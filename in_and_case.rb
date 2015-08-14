puts "What is your name"
answer = gets.chomp

# if answer == "Josh"
# 	puts "Hello Josh"
# elsif answer == "Andrew"
# 	puts "Hello Andrew"
# elsif answer =="Zack"
# 	puts "Hello Zack"
# else 
# 	puts "I don't know you"
# end	

case answer
	when "Josh"
		puts "Hello Tracey"
	when "Andrew"
		puts "Hello Andrew"
	when "Zack"
		puts "Hello Zack"
	else 
		puts "I don't know you"
end				

	
		