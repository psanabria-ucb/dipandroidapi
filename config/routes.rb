Rails.application.routes.draw do
  resources :posts, :defaults => { :format => :json }
  post 'login' => 'sessions#create', :defaults => { :format => :json }

  resources :users, :defaults => { :format => :json }
end
