Rails.application.routes.draw do
  root to: 'home#index'

  resources :posts

  get '/users/posts_manager' => 'users#posts_manager'

  devise_for :users

end
