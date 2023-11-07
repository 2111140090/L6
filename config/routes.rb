Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :products
  root "top#main"
  resources :cart_items, only: [:new, :create, :destroy]
  resources :carts, only: [:show]

end
