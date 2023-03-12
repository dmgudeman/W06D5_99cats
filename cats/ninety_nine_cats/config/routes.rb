Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

   # Defines the root path route ("/")
  # root "articles#index"
  root "cats#index"

  # Defines the root path route ("/")
  resources :cats, except: [:destroy]

  # root "articles#index"
end
