puts "Hello!"
puts "How old are you?"
age1 = gets.to_f
puts "How old is your mom?"
age2 = gets.to_f
puts "How old is your dad?"
age3 = gets.to_f
if age1>age2||age1>age3
	puts "You're older than your parent? Odd."
end
avgAge = (0.0 + age1 + age2 + age3)/3
puts "Thanks for answering my creepy questions! The average age of your family is #{avgAge.round(2)} years old!\nGoodbye!"