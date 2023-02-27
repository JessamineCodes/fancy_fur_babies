Rails.application.routes.draw do
  get 'costumes/index'
  devise_for :users
  root to: "pages#home"

  resources :costumes, only: [:index, :new, :create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
