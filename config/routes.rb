Rails.application.routes.draw do
  root "static_pages#index"
  get "index", to: "static_pages#index"
  get "/home", to: "static_pages#home"
  get "/artist", to: "static_pages#artist"
  get "/track", to: "static_pages#track"
  get "search", to: "search#search"

  resources :tracks
end
