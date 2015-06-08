#greet user

require 'rest-client'
require 'json'


puts
puts "Hello user! Have some petitions!"
puts

puts "What status petitions would you like to see? Open? Closed? Responded?"

stat=gets.strip;

offset=0
while true

response = RestClient.get "https://api.whitehouse.gov/v1/petitions.json?limit=10&status=#{stat}&offset=#{offset}"
inter=JSON.parse(response)
petitions = inter["results"]

#get petition

#petitions = ["Gun control", "Cannabis", "Immigration"]



#print each petition
petitions.each_with_index do |petition, index|
	puts "#{index+1+offset}. |#{petition["status"]}| #{petition["title"]}"
end
#goodbye
offset+=10
puts "See the next 10? (Y/N)"



break if gets.strip.upcase=='N'

j=gets

end
puts
puts "kthxbai"
puts




