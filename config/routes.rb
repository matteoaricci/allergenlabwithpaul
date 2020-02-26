Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :index, :new, :create]
  delete "/users/:id", to: "users#destroy", as: "destroy_user"

  resources :ingredients, only: [:index, :show, :new, :create]
  delete "/ingredients/:id", to: "ingredients#destroy", as: "destroy_ingredient"

  resources :recipes, only: [:index, :show, :new, :create]

  resources :rec_ings, only: [:new, :create]
end
