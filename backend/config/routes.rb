Rails.application.routes.draw do
  get "health", to: "health#index"
  resources :users
end