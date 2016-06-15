class SessionsController < ApplicationController
  def create
    username = params[:username]
    password = params[:password]
    @user = User.find_by(username: username)

    if @user && @user.authenticate(password)
      render status: :ok
    else
      render json: {message: "Bad Login"}, status: :unauthorized
    end
  end
end
