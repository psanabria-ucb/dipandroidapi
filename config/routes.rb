Rails.application.routes.draw do
  resources :posts
  post 'login' => 'sessions#create'

  resources :users
end
