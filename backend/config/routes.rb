Rails.application.routes.draw do
  resources :users
  resources :starwars
  get "health", to: "health#index"
end