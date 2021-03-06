# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  # resources :posts
  root to: 'posts#index'
  resources :posts, :users
  get 'post/:id/likes', to: 'posts#likes', as: :likes
end
