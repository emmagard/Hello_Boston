Rails.application.routes.draw do
  root to: 'collection_items#index'
  resources :collection_items
  devise_for :users


end
