json.extract! @post do |json, post|
  json.(post, :id, :title, :content)
  json.user post.user do |json, user|
    json.id user.id
    json.username user.username
    json.email user.email
  end
end
