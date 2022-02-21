Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :Places
  resources :Posts   
  # Defines the root path route ("/")
  get '/places/:id', to: 'places#show'
  get '/posts/:id', to: 'posts#show'

  # root "articles#index"
  root to: "places#index"
end
