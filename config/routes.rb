Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :create, :update]
  resources :pizzas, only: [:index, :create, :update]
  resources :pizza_slices, only: [:index, :create, :update]


post '/login', to: 'users#login'

end
