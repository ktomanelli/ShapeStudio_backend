Rails.application.routes.draw do
  get '/projects/load/:id', to: 'projects#load'
  get '/projects', to: 'projects#index'
  get '/users/stay_logged_in', to: 'users#stay_logged_in'
  get '/notices', to: 'notices#show'
  get '/test', to:  proc { [200, {}, ['hello']] }

  post '/users', to: 'users#create'
  post '/projects', to: 'projects#new'
  post '/users/login', to: 'users#login'
  post '/issues', to: 'issues#create'
  
  patch '/objects/:id', to: 'three_objects#update'

  patch '/projects/:id', to: 'projects#update'
  patch '/notices/hide', to: 'users#hide_notice'


  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
