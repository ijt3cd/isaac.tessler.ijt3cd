puts "Enter a number:"
nst = gets.to_i
print "Fibonnaci at #{nst}: "

x=0
a1=1
a2=1
a3=0
while x+2<nst
	a3=a1+a2
	a1=a2
	a2=a3
	
	x+=1
end
puts a3


