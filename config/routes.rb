Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :scooters do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:destroy] do
    member do
      patch :accept, :decline
    end
  end

  get '/profile', to: 'dashboard#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
