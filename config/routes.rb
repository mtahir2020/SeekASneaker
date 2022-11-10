Rails.application.routes.draw do

  root to: "sneakers#index"
  get "my_sneakers", to: "pages#my_sneakers"
  resources :sneakers, only: %i[index show create new destroy edit update] do
    resources :orders, only: %i[create index]
  end

  resources :orders

  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
