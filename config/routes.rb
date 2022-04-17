Rails.application.routes.draw do
  get "/home/about" => "home#about", as: "about"
  devise_for :users
  resources :books, only: [:new, :create, :index, :edit, :show, :update, :destroy]
  resources :users, only: [:new, :create, :index, :edit, :show, :update]
  
  root to:"home#top"
  
end
