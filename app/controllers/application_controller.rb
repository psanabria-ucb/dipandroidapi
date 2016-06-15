class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include ActionController::RespondWith
  
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  respond_to :json
end
