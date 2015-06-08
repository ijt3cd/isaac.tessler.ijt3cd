def whisper
	gets.strip.downcase
end
puts whisper

def twist(yo)
	yo.split("").shuffle.join
end
3.times do 
	puts twist("My name is Isaac")
end

