grid=[" "," "," "," "," "," "," "," "," "]
count = 0
P1Turn = true;
while true
	puts "#{P1Turn ? "Player 1" : "Player 2"}"
	while true
		ans=gets.to_i	
		if ans.class!=9.class || ans<0 || ans>8 
			puts "Error: Invalid input"
		elsif grid[ans]!=" "
			puts "Error: Square already taken"
		else
			grid[ans]=P1Turn ? "x" : "o"
			break
		end
	end
	puts " #{grid[0]} | #{grid[1]} | #{grid[2]}"
	puts "---+---+---"
	puts " #{grid[3]} | #{grid[4]} | #{grid[5]}"
	puts "---+---+---"
	puts " #{grid[6]} | #{grid[7]} | #{grid[8]}"
	

	if grid[0]==grid[3]&&grid[0]==grid[6]&&grid[0]!=" " || grid[1]==grid[4]&&grid[1]==grid[7]&&grid[1]!=" " || grid[2]==grid[5]&&grid[2]==grid[8]&&grid[2]!=" " || grid[0]==grid[1]&&grid[0]==grid[2]&&grid[0]!=" " || grid[3]==grid[4]&&grid[3]==grid[5]&&grid[3]!=" " || grid[6]==grid[7]&&grid[6]==grid[8]&&grid[6]!=" " || grid[0]==grid[4]&&grid[0]==grid[8]&&grid[0]!=" " || grid[2]==grid[4]&&grid[2]==grid[6]&&grid[2]!=" "
	puts "Congrats, player #{P1Turn ? "1" : "2"} won!"
	break
	end

	

P1Turn=!P1Turn
count+=1
if count==9
	puts "Cat's game!"
	break	
end

end

# [000
#  000
#  000]

# down
# 036
# 147
# 258
# across
# 012
# 345
# 678
# diag
# 048
# 246