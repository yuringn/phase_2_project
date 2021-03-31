Rails.application.routes.draw do
  resources :people
  resources :rentals
  resources :puppies
  resources :advertisements, only: [:index]
  resources :shelters

  get "/logout", to: "sessions#logout", as: 'logout'

  root to: "main#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
