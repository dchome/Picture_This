Rails.application.routes.draw do

  root 'sessions#new'

  resources :sessions, only: [:create]

  resources :users, only:[:new, :create, :show] do
    resources :rounds, only: [:index]
  end

  resources :decks, only: [:index]
  resources :photos, only: [:show, :create]
  resources :rounds, only: [:create]

  resources :rounds, only: [:show] do
    resources :photos, only: [:index]
  end

end
