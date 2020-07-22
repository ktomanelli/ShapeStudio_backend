Rails.application.routes.draw do
  post '/scene/save', to: 'scenes#save'
  get '/scene/load', to: 'scenes#load'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
