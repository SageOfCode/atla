Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"

  get '/search', to: 'avatar#search'
  get '/avatar/:api_id', to: 'avatar#show'
end
