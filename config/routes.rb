Rails.application.routes.draw do

  root to: "sneakers#index"

  resources :sneakers, only: %i[index show create new destroy] do
    resources :orders, only: %i[create]
  end


  resources :orders, only: :show

  devise_for :users, :path => "accounts"

  resources :users do
    resources :reviews, only: [:index, :new, :create]
  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
