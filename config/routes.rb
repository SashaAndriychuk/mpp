Rails.application.routes.draw do
  devise_for :users
  resources :specials
  resources :pacient_cards
  resources :pacients
  resources :doctors
  resources :clinics
  resources :departments

  resources :devises
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
