Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "dashboard", action: :show, controller: "users"

  resources :companies do
    resources :bookmarks, only: [:create, :destroy]
  end
  
  get 'about', to: 'pages#about'
  

  resources :gender_ratings, only: [:show]

  
    get "user/:id", to: "users#show", as: "user_show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
