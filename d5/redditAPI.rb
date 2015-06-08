#greet user

require 'rest-client'
require 'json'


puts
puts "Hello user! Here's a joke!"
puts

#puts "What status petitions would you like to see? Open? Closed? Responded?"

#stat=gets.strip;

offset=0
while true

response = RestClient.get "reddit.com/r/jokes.json"

inter=JSON.parse(response)

jokeTitle = inter["data"]["children"][offset]["data"]["title"]
puts jokeTitle
puts
joke = inter["data"]["children"][offset]["data"]["selftext"]
puts joke

puts "Hear another joke? (Y/N)"
break if gets.upcase.strip=='N'
offset+=1
end
puts
puts "kthxbai"
puts




