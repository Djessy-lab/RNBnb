Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :artists, only: %i[index show] do
    resources :bookings, only: %i[create]
  end
  resources :bookings, only: %i[index show edit update destroy]

  namespace :admin do
    resources :artists
    resources :bookings, only: %i[index show]
    post "validate", to: "bookings#validate"
  end
end
