json.array!(@userns) do |usern|
  json.extract! usern, :id, :nombre, :location
  json.url usern_url(usern, format: :json)
end
