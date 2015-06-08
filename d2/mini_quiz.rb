puts "Welcome to Isaac's mini quiz!"
total=0;
puts "How many siblings do I have?"
a1 = gets.strip
if (a1=="3") || (a1=="three") || (a1=="Three")
	total=total+1
	puts "Right!"
else 
	puts "Wrong, I have three; a twin brother, an older brother, and an older sister."
end
if total==1
	puts "You have 1 point."
else puts "You have #{total} points"
end

puts "What theatre job have I held?"
a1 = gets.strip
if (a1=="Director") || (a1=="Actor") || (a1=="House Manager") || (a1=="Stage Crew") || (a1=="House manager") || (a1=="director") || (a1=="actor") || (a1=="house manager") || (a1=="stage crew") || (a1=="Stage crew")
	total=total+1
	puts "Right! Director, actor, house manager and stage crew!"
else 
	puts "Wrong, Director, actor, house manager or stage crew!"
end
if total==1
	puts "You have 1 point."
else puts "You have #{total} points"
end

puts "What sport have I played the longest?"
a1 = gets.strip
if (a1=="Soccer") || (a1=="soccer") || (a1=="soccer?")
	total=total+1
	puts "Right!"
else 
	puts "Wrong, it was soccer!"
end
if total==1
	puts "You have 1 point."
else puts "You have #{total} points"
end

if total==0
	puts "Poor show"
else
	puts "Well done!"
end