puts "Welcome to list builder++!"



hold = []
while true
	puts "What can I do for you?"
	nxt = gets.strip
	slt = nxt.split
	
	if(slt[0].upcase=="ADD")
		hold.push(nxt[4,nxt.length])
		puts "Added! Your list is"
		p hold
	end
	if(slt[0].upcase=="REMOVE")
		hold.delete(nxt[7,nxt.length])
		puts "Removed! Your List is:"
		p hold
	end
	if(slt[0].upcase=="QUIT")
		puts "Bye!"
		break
	end

end

