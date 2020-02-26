Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :index, :new, :create]
  delete "/users/:id", to: "users#destroy", as: "destroy"

  resources :ingredients, only: [:index, :show]
end
