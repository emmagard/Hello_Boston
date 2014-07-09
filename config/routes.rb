Rails.application.routes.draw do
  root to: 'home#index'
  resources :posts
  devise_for :users
end
