# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users

  unauthenticated :user do
    root to: 'home#index', id: 'index', as: :unauthenticated_root
  end

  devise_scope :user do
    authenticate :user do
      resources :assessments
      resources :questions
    end
    root to: "home#index", as: :authenticated_user
  end
  # Defines the root path route ("/")
  root 'home#index'
end
