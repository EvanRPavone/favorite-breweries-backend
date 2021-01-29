Rails.application.routes.draw do
  get '/breweries' => "breweries#index"
  get '/breweries/:favorite_name' => 'breweries#show'
  post '/breweries' => 'breweries#create'

  get '/favorites' => 'favorites#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
