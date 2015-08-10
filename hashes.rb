# hash = {}

# hash ["name"] = "Josh"
# hash ["age"] = "24"

# my_hash = {"name" => "Josh", "age" => 24}

# DIFFERENT WAYS TO WRITE HASHES OUT:

# another_hash = {:name => "Josh", :age => 24}

# yet_another_hash = {:name "Josh", :age 24}


# hash.each do |key, value|
# 	puts "The key is #{key} and the value is #{value}"
# end

# PROMPT TO CHANGE THE VAULE OF "name"
# puts "Please enter a new name"
# answer = gets
# hash["name"] = answer

# puts hash ["name"]

# ADDING A NEW KEY TO AN EXISTING HASH.
# puts "Please enter a new key"
# new_key = gets.chomp
# puts "Please enter a new vale for the key"
# answer = gets.chomp
# hash[new_key] = answer
# puts hash[new_key]

#HOW TO SHOW ALL KEYS
# puts hash.keys

#HOW TO LOOP THROUGH THE HASH USING AN EACH DO LOOP
# hash.each do |key, value|
# 	if value == "Josh"
# 		puts "Hey Josh"
# 		break
# 	else 
# 		puts "You're not Josh"
# 	end
# end

# INVENTORY APP

car_inventory = {"mustang" => 4, "tesla S" => 2, "prius" => 35}

puts "Press 1 to check inventory"
puts "Press 2 to edit existing inventory"
puts "Press 3 to add new item to inventory"

answer = gets.chomp

if answer == "1"
	puts car_inventory

elsif answer == "2"
	puts "What inventory item would you like to edit?"
	puts car_inventory.keys
	edit_answer = gets.chomp
	car_inventory.each do |key,value|
		if edit_answer != key
			puts "That is not a valid entry"
		else
			puts "How many do you have?"
			count = gets.to_i
			car_inventory[edit_answer] = count
			puts car_inventory
			break
		end
	end		

elsif answer == "3"
	puts "Please enter new wehicle"
	new_key = gets.chomp
	puts "Please enter how many you have"
	count = gets.to_i
	car_inventory[new_key] = count
	puts car_inventory

end 















