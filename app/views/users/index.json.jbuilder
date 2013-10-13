json.array!(@users) do |user|
  json.extract! user, :user, :email
  json.url user_url(user, format: :json)
end