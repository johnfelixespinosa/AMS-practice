Rails.application.routes.draw do
  root to: 'welcome#home'
  resources :games, only: [:show, :index]
  resources :users, only: [:index, :show, :new, :create]

  
end
