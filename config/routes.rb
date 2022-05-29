Rails.application.routes.draw do
  get 'mypage', to: 'users#me'  
  
  post 'login', to: 'sessions#create'  
  
  delete 'logout', to: 'sessions#destroy'  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get 'boards', to: 'boards#index'
  # get 'boards/new', to: 'boards#new'
  # get 'boards/:id', to: 'boards#show'  
  # post 'boards', to: 'boards#create'
  # root to: 'boards#index'

  root 'home#index'
  resources :boards
  resources :comments, only: %i[create destroy]
  resources :users, only: %i[new create]
  
end
