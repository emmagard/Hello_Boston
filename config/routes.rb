Rails.application.routes.draw do

  resources :collection_items
  devise_for :users


end
