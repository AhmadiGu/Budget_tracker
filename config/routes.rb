Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users
  # Defines the root path route ("/")
  # root "articles#index"
   root "home#index"
   resources :users
   resources :categories
   resources :entities
end
