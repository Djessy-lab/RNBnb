Rails.application.routes.draw do
  get 'reviews/new'
  devise_for :users, controllers: { sessions: 'users/sessions' }
  root to: "pages#home"

  resources :artists, only: %i[index show] do
    resources :bookings, only: %i[create]
    resources :reviews, only: %i[new create]
  end
  resources :bookings, only: %i[index show edit update destroy]

  namespace :admin do
    resources :artists
    resources :bookings, only: %i[index show] do
      member do
        post "validate", to: "bookings#validate"
      end
    end
  end
end
