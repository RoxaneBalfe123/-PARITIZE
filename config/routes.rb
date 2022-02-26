Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "dashboard", action: :show, controller: "users"

  resources :companies, only: [:show, :new, :create, :index, :edit, :update] do
    resources :bookmarks, only: [:create, :destroy]
  end

  Rails.application.routes.draw do
    get "user/:id", to: "users#show", as: "user_show"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
