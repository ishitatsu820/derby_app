Rails.application.routes.draw do
  get 'targets/index'
  get 'targets/new'
  get 'targets/edit'
  post 'targets/', to: 'targets#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#hello'
  
  get '/signup', to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
  resources :targets
  
  
end
