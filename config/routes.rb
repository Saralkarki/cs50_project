Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home/index'
  resources :users
  root 'home#index', as: :home
  get '/register', to: 'users#register', as: :register
  get '/login', to: 'users#login', as: :login
end
