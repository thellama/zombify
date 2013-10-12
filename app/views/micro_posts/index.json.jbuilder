json.array!(@micro_posts) do |micro_post|
  json.extract! micro_post, :micro_post, :user_name
  json.url micro_post_url(micro_post, format: :json)
end