Rails.application.routes.draw do
  get 'welcome/index'
  resources :game_genres
  resources :genres
  resources :reviews
  resources :games, only: [:show]
  resources :users, only: [:show, :new, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
