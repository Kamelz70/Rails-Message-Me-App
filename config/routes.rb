Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'chatroom#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'
  post 'message', to: 'messages#create'
  resources :users, except: [:new]

  # Defines the root path route ("/")
  # root "articles#index"
  mount ActionCable.server, at:'/cable'
end
