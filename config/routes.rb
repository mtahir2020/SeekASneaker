Rails.application.routes.draw do

  root to: "sneakers#index"

  resources :sneakers, only: %i[index show create new destroy] do
    resources :orders, only: %i[create]
  end


  resources :orders, only: :show

  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
