json.array!(@microposts) do |micropost|
  json.extract! micropost, :user_id, :post
  json.url micropost_url(micropost, format: :json)
end