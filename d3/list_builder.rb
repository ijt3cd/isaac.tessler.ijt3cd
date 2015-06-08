puts "Welcome to list builder!"
lst=[]
while true
	puts "What can I add?"
	nxt = gets.strip
	lst.push(nxt)
	puts "Added! Your list is:"
	p lst
end