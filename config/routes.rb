Rails.application.routes.draw do
  root to: 'home#index'

  resources :posts do
    resources :comments, only: [:index, :new, :create]
  end

  get '/users/posts_manager' => 'users#posts_manager'
  get '/users/comments_manager' => 'users#comments_manager'
  devise_for :users

end
