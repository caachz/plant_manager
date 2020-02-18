Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/plants', to: 'plants#index'
  get '/plants/new', to: 'plants#new'
  post '/plants', to: 'plants#create'
  get '/plants/:id', to: 'plants#show'
  get '/plants/:id/edit', to: 'plants#edit'
  patch '/plants/:id', to: 'plants#update'
  delete '/plants/:id', to: 'plants#destory'
end
