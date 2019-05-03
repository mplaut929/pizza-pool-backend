Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :create]
  resources :pizzas, only: [:index, :create]
  
  
post '/login', to: 'users#login'

end
