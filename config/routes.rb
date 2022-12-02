# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :assessments
  resources :questions
  # Defines the root path route ("/")
  root 'home#index'
end
