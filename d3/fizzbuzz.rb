x=1
while x<=100
	if(x%3==0)
		print "fizz"
		if(x%5==0)
			puts "buzz"
		else
			puts""
		end
	end
	if(x%3!=0&&x%5==0)
		puts "buzz"
	end
	if (x%3!=0&&x%5!=0)
		puts x
	end
	x+=1
end
