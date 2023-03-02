Rails.application.routes.draw do
  get 'bookings/index'
  get 'costumes/index'
  devise_for :users
  root to: "pages#home"


  resources :costumes do
    collection do
      get :my_costumes
    end
    resources :bookings, only: [:index, :create]
  end

  resources :users, only: [:show, :edit, :update]

  resources :bookings, only: [:destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
