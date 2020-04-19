# frozen_string_literal: true

# App routes
Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users

  root 'articles#index'

  resources :articles

  resource :wizard do
    get :step1
    get :step2
    get :step3

    post :validate_step
  end
end
