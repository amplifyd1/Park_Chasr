Rails.application.routes.draw do
  devise_for :users
  resources :parks, except: [:update, :edit, :destroy]
  root 'parks#index'
  resources :users
  resources :visits
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
