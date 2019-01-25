Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/', to: 'welcomes#index'
  resources :courses
  resources :skills, only: [:index, :show]
  #resources :users, only: [:edit, :update, :delete]

  get '/users/:id', to: 'users#show', as: 'user'
  get '/signup' => "users#new"
  post '/signup' => "users#create"


end
  