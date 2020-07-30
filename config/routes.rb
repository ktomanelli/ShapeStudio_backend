Rails.application.routes.draw do
  post '/scenes/save', to: 'scenes#save'
  get '/scenes/load/:id', to: 'scenes#load'
  get '/scenes', to: 'scenes#index'
  patch '/scenes/:id', to: 'scenes#update'
  post '/users', to: 'users#create'
  get '/users/stay_logged_in', to: 'users#stay_logged_in'
  post '/users/login', to: 'users#login'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
