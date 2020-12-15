Rails.application.routes.draw do
  get '/scenes/load/:id', to: 'scenes#load'
  get '/scenes', to: 'scenes#index'
  get '/users/stay_logged_in', to: 'users#stay_logged_in'
  get '/notices', to: 'notices#show'

  post '/users', to: 'users#create'
  post '/scenes/save', to: 'scenes#save'
  post '/users/login', to: 'users#login'
  post '/issues', to: 'issues#create'
  
  patch '/scenes/:id', to: 'scenes#update'
  patch '/notices/hide', to: 'users#hide_notice'


  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
