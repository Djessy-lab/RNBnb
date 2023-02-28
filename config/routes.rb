Rails.application.routes.draw do
  devise_for :users
  root to: "artists#index"

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
