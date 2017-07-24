Rails.application.routes.draw do
  root "static_pages#index"
  devise_for :users
  get "index", to: "static_pages#index"
  get "/home", to: "static_pages#home"
  get "/artist", to: "static_pages#artist"
  get "/track", to: "static_pages#track"
  resources :users, only: :index do
    collection do
      resource :registrations, only: [:new, :create]
      resource :sessions, only: [:new, :create, :destroy]
      resource :confirmations, only: [:show]
    end
  end
end
