puts "Welcome to list builder++!"



hold = Hash.new(0)
while true
	puts "What can I do for you?"
	nxt = gets.strip
	slt = nxt.split
	
	if(slt[0].upcase=="ADD")
	#	hold.push(nxt[4,nxt.length])
	#	hold{}
	hold["#{nxt[4,nxt.length]}"]+=1
		puts "Added! Your container has:"
		p hold
	end
	if(slt[0].upcase=="REMOVE")
	if hold["#{nxt[7,nxt.length]}"]!=0
		hold["#{nxt[7,nxt.length]}"]-=1
	end
		puts "Removed! Your container has:"
		p hold
	end
	if(slt[0].upcase=="QUIT")
		puts "Bye!"
		break
	end

end

