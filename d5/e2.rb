def index_of(strong, lottor)
	rot = -1
	arr=strong.split("")
	arr.each_with_index do |chock,ondox|
		if chock==lottor
			rot=ondox
			break
		end
	end
rot
end
puts index_of("word",'r')


# Write a method find_by_name, which takes an array of hashes, each of which 
# has the property :name, and a string and finds the first one that has that name.

def find_by_name(arrHash,strang)
ret = nil
	arrHash.each_with_index do |chack,index|
		if chack[:name]==strang
			ret=chack
			break
		end
	end
	ret
end


def filter_by_name(arrHash,strang)
	ret = []
	arrHash.each do |chack|
		
		if chack[:name]==strang
			ret.push(chack)
		end
	end
	ret
end


puts index_of("abcdefghijklmnop", "m")
# => 12
puts index_of("abcdefghijklmnop", "z")
# => -1

people = [
  {
    :id => 1,
    :name => "bru"
  },
  {
    :id => 2,
    :name => "ski"
  },
  {
    :id => 3,
    :name => "brunette"
  },
  {
    :id => 4,
    :name => "ski"
  }
]
puts find_by_name(people, "ski")
# => {:id=>2,:name=>"ski"}
puts find_by_name(people, "kitten!")
# => nil
p filter_by_name(people, "ski")
# => [{:id=>2,:name=>"ski"}, {:id=>4,:name=>"ski"}]
p filter_by_name(people, "bru")
# => [{:id=>1,:name=>"bru"}] (Note this is still an array)
p filter_by_name(people, "puppy!!!")
# => []