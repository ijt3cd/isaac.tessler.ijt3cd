json.array!(@users) do |user|
  json.extract! user, :id, :name, :handle, :followers
  json.url user_url(user, format: :json)
end
