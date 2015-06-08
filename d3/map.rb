result = []
engines = ["Google", "Bing", "Ask Jeeves"]
result = engines.map do |p|
	if p == "Google"
    p=("OK")
  elsif p == "Bing"
    p=("Bad!")
  else
    p=("what is that?")
  end
end

puts result
# => ["OK", "Bad!", "What is that?"]
