json.(@post, :title, :content)
json.user do
  json.id @post.user.id
  json.username @post.user.username
  json.email @post.user.email
end
json.posted_date @post.created_at
