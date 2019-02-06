Rails.application.routes.draw do
  root to: 'welcome#home'
  resources :games, only: [:new, :create]
  resources :users, only: [:index, :show, :new, :create]

  
end
