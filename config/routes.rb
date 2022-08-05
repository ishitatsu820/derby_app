Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'goals#index'
  
  get '/new', to: 'goals#new'
  get '/edit', to: 'goals#edit'
  
  get 'signup', to: 'users#new'
  
  resources :users
end
