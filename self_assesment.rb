#1 def hello (name) 
# 	puts "Hello #{name}, nice to meet you."
# end	

# puts "Whats your name"
# name = gets.chomp

# puts hello(name)

 #2 x = 1
 # y = 1
 # z = 1



 # def sum_numbers(x,y,z)

 #       puts x+y+z

 #    end

 #    puts sum_numbers(x,y,z)

    #3 to_do = ["wash the car", "buy groceries", "finish homework", "pay the bills"]

    # puts "Don't forget to: #{to_do [1]}"
    #  puts "Don't forget to: #{to_do [2]}"
    #  puts "Don't forget to: #{to_do [3]}"

    #4 def avg(a, b, c, d)

    #      total =a + b + c + d

    #      avg = total / 4

    #      return c + d

    # end

    # puts avg(5, 8, 6, 10)

    #5 SARAH

    #6 wild_cats.push("bobcat")

#7      user1= {:firstname=> "Johnny", :lastname => "Begood", :gender => "male",
#     :dob => "08/21/1981", :birthplace => "Seattle, WA"}

# puts user1[:birthplace]


# 8 user1[:current_city] = "Atlanta GA"
# puts user1

  # 9 alpha_soup= ["c", "k", "y", "u"]
  # puts alpha_soup[2]

 # 10 alphabits= {"d" =>4, "k" => 14, "u" => 52}
 # puts alphabits["k"]

#11
# x = rand(1..10)
# ## x is defined
# until x ==7
# ## evaluate if x is equal to 7 
# puts x
# ## print the value of x
# x = rand(1..10)  
# end

#12
 # x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 # y = x.sample
 # new_array = []

 # while y != 7
 #  puts y 
 #  new_array.push(y)
 #  y = x.sample
 # end 

 # puts "Loop ended!"
 # p new_array

 # count = 0

 # new_array.each do |i|
 #  if i < 6
 #    puts i
 #    count += 1
 #  end
 #  end 


 #  puts "There are #{count} numbers under six."


#13
  class Vehicle
     def initialize(color, type)
        @color = color
        @type = type   # car, truck, motorcyle, scooter, van
     end
     
     def honk
         puts "The #{@color} #{@type} goes Beep!"
            end
     end

     car = Vehicle.new("blue", "Honda")

     car.honk
                   















    
     