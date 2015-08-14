#CREATING YOUR OWN CLASS.

# class Word < String
# 	def very_long?(string)
# 		if string.length >= 10
# 			puts "true"
# 		end
# 	end
# end		

# w = Word.new
# puts w.very_long?("areallylongword")

# f = Word.new
# puts f.very_long?("word")

# q = Word.new("Hello")
# puts q.length


class Person

	attr_accessor :first_name, :last_name, :gender, :age

	def initialize(first_name, last_name, gender, age)
		@first_name = first_name
		@last_name = last_name
		@gender = gender
		@age = age
	end
	
	def introduction
		puts "#{@first_name} #{@last_name} is a #{@age} year old #{@gender}"
	end		


end

#INHERITENCE
class Student < Person
	def learning
		puts "#{@first_name} is learning!"
	end
end		

# p = Student.new("Josh", "Hnath", "male", 24)
# p.learning
# p. introduction

class Teacher < Person
	def teaching
		puts "#{@first_name} is not a teacher."
	end
end
p = Teacher.new("Josh", "Hnath", "male", 24)
p.teaching

	

# class Animal

# 	attr_accessor :type, :color

# 	def initialize(type, color)
# 		@type = type
# 		@color = color
# 	end

# 	def intro
# 		puts "Seymore is an #{@color} #{@type}."
# 	end
# end		

# animal = Animal.new("cat", "orange")	
# animal.intro










#INSTANCE VARIABLE EXAMPLE
#ALLOWS YOU TO CALL A VARIABLE WHILE IT'S OUTSIDE OF THE SCOPE THATS IT'S DEFINED IN.

# @name = "josh"

# def hello
# 	puts "Hello #{@name}"
# end

# puts hello	




