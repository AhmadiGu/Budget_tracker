Rails.application.routes.draw do
  devise_for :users
  
  authenticated do
    root to: "categories#index", as: :authenticated_user
  end
  root to: "home#index", as: :unauthenticated_user 
   
   resources :users
   resources :categories
   resources :entities
end