Rails.application.routes.draw do
  get '/objects/load/:id', to: 'three_objects#load'
  get '/objects', to: 'three_objects#index'
  get '/users/stay_logged_in', to: 'users#stay_logged_in'
  get '/notices', to: 'notices#show'
  get '/test', to:  proc { [200, {}, ['hello']] }

  post '/users', to: 'users#create'
  post '/objects/save', to: 'three_objects#save'
  post '/users/login', to: 'users#login'
  post '/issues', to: 'issues#create'
  
  patch '/objects/:id', to: 'three_objects#update'
  patch '/notices/hide', to: 'users#hide_notice'


  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
