Rails.application.routes.draw do
  root to: 'welcome#home'

  resources :users, only: [:show, :new, :create]

  resources :games, only: [:new, :create]
end
