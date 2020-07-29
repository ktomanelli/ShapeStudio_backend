Rails.application.routes.draw do
  post '/scenes/save', to: 'scenes#save'
  get '/scenes/load/:id', to: 'scenes#load'
  get '/scenes', to: 'scenes#index'
  patch '/scenes/:id', to: 'scenes#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
