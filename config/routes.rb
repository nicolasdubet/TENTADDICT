Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :bookings, only: [:index, :show]
    resources :tents, except: [:edit, :update, :destroy] do
      resources :bookings, only: [:new, :create]
    end
    resources :users, only: [:new, :create]
    resources :bookings, only: [:destroy]
    patch "accept", to: "bookings#accept"
    put "decline", to: "bookings#declined"
end
