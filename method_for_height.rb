def convert_pounds_to_kilograms (pounds) #define method
	weight_kilograms = pounds * 0.453592
	return weight_kilograms
end	


puts "What is your weight in pounds"

my_weight = gets.chomp.to_i

my_kilo = convert_pounds_to_kilograms(my_weight)

puts "You weigh #{my_kilo} kilograms"


