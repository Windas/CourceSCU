Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home/visitors#index'

  resources :users
  namespace :data do
    resources :homeworks
    resources :categories do
      resources :books
      resources :videos
      resources :articles
    end
  end
end
