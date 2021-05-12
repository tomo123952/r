Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  root to: 'tasks#index' 

  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to:'sessions#destroy'
  get 'signup', to: 'users#new'
  resources :users, only:[:index, :show, :create]
  resources :tasks
end

