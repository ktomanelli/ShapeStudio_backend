Rails.application.routes.draw do
  post '/scene/save', to: 'scenes#save'
  get '/scene/load', to: 'scenes#load'
  get '/scene/loadnew', to: 'scenes#load_new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
