Rails.application.routes.draw do
  devise_for :users
  resources :specials
  resources :pacient_cards
  resources :pacients
  resources :doctors
  resources :clinics
  resources :departments

  resources :clinics do
    resources :departments
  end

  resources :clinics do
    resources :pacient_cards
  end

  resources :devises
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  # Defines the root path route ("/")
  # root "articles#index"
  get 'download_all_csv' => 'downloader#all_csv'
  get 'download_all_pdf' => 'downloader#all_pdf'
  get 'download_clinic_pdf/:id' => 'downloader#clinic_pdf', as: "download_clinic_pdf"
  get 'download_pacient_pdf/:id' => 'downloader#pacient_pdf', as: "download_pacient_pdf"
end
