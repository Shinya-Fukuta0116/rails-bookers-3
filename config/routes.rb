Rails.application.routes.draw do
  get "/home/about" => "home#about", as: "about"
  resources :books, only: [:new, :index, :show]
  devise_for :users
  root to:"home#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
