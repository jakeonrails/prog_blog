json.array!(@posts) do |post|
  json.extract! post, :id, :title, :markdown, :html, :published_at, :user_id
  json.url post_url(post, format: :json)
end
