Rails.application.routes.draw do
  devise_for :users
  root to: 'tents#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create]
  resources :tents, except: [:edit, :update, :destroy]
end

