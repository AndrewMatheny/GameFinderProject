Rails.application.routes.draw do
  resources :game_genres
  resources :genres
  resources :reviews
  resources :games
  resources :users, only: [:show, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
