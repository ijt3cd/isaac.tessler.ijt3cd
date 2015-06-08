1.upto(100) do |count|

fizz="fizz" if (count%3==0)
buzz="buzz" if (count%5==0)

if (count%3==0)||(count%5==0)
	puts "#{fizz}#{buzz}"
else
	puts count
end
end
