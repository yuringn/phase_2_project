Rails.application.routes.draw do
  resources :people
  resources :rentals
  resources :puppies
  resources :advertisements
  resources :shelters

  root to:"main#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
