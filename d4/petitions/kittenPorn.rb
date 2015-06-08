
require 'rubygems'
require 'crack'
require 'json'
require 'rest-client'
#require 'unirest'

result=RestClient.get "http://thecatapi.com/api/images/get?format=xml&results_per_page=10"
myXML=Crack::XML.parse(result)
my_json=myXML.to_json
parsed_data=JSON.parse(my_json)
catURL = parsed_data["response"]["data"]["images"]["image"][0]["url"].tr('"', '')
puts catURL

key="MlTajXHtjmmshKTCJjejBFVK91Fwp1cHTYojsndAje96iSal1V"

response = RestClient.get "https://sphirelabs-advanced-porn-nudity-and-adult-content-detection.p.mashape.com/v1/get/index.php?mashape-key=#{key}&url=#{catURL}"

puts response