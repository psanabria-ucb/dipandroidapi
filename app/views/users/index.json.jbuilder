json.array!(@users) do |user|
  json.extract! user, :username, :email, :picture_url
end
