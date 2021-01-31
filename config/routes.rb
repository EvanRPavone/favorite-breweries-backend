Rails.application.routes.draw do
  get '/breweries' => "breweries#index"
  get '/breweries/:favorite_beer' => 'breweries#show'
  post '/breweries' => 'breweries#create'
  delete '/breweries' => 'breweries#destroy'

  get '/favorites' => 'favorites#index'
  delete '/favorites' => 'favorites#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
