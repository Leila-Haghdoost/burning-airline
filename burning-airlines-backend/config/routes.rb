Rails.application.routes.draw do
  resources :reservations
  resources :planes
  resources :users
  resources :flights
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
