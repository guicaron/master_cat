Rails.application.routes.draw do
  devise_for :users
  root to: "chefs#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :chefs do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[index show update destroy edit]
end
