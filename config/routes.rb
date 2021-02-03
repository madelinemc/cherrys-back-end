Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :customers, only: [:create]

  resources :orders, only: [:create, :update, :destroy]

  resources :flavors, only: [:index]
  resources :scoops, only: [:create]

  resources :topping_types, only: [:index]
  resources :toppings, only: [:create]

  resources :base_types, only: [:index]
  resources :bases, only: [:create]

end
