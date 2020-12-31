# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'posts#index', as: 'home'
  resources :posts do
    resources :comments do
      member do
        post :publish
      end
    end
  end

  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
