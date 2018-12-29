Rails.application.routes.draw do
  devise_for :users
  resources :parks do
    resources :visits, only: [:index]
  end
  root 'parks#index'
  resources :users do
   resources :visits, only: [:index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
