puts "Hey bru. Let's compute some quadform. (Answers accurate to 2 decimal points)."
puts "Give me an A:"
A = gets.to_f
puts "Give me a B:"
B = gets.to_f
puts "Give me a C:"
C = gets.to_f
puts "beep computing boop boop..."
if (B*B-4*A*C)<0
	complex = Math.sqrt(-1.0*(B*B-4*A*C))/(2*A)
	normal = -B/(2*A)
	
	puts "x is either [#{normal.round(2)} + #{complex.round(2)}i] or [#{normal.round(2)} - #{complex.round(2)}i]" 
	
end

if (B*B-4*A*C)==0
	puts "x is #{((-B + Math.sqrt(B*B - 4*A*C))/(2*A)).round(2)}"

end

if (B*B-4*A*C)>0;
	puts "x is either [#{((-B + Math.sqrt(B*B - 4*A*C))/(2*A)).round(2)}] or [#{((-B - Math.sqrt(B*B - 4*A*C))/2*A).round(2)}]"

end

puts "Goodbye!"