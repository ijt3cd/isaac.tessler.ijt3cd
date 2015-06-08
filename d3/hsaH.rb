def invert(someHash)
		
	if someHash!=nil
		
	
	x=0
	newHash={}
	
		someHash.each do |k,v|  
			newHash[v]=k;
		end
	
	newHash
end
end


l = nil;
m={a:["b","c"]}
n={a:["b",{c:"d"}]}
puts invert(l)
puts invert(m)
puts invert(n)