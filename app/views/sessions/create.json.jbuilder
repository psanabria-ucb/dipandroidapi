unless @user
  
else
  json.extract! @user, :id, :username, :email
end
