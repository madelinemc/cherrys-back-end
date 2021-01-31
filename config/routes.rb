Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :customers, only: [:index, :create]

  resources :orders, only: [:create, :update, :destroy]

  resources :flavors, only: [:index]
  resources :topping_types, only: [:index]

end
