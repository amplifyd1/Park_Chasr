Rails.application.routes.draw do
  resources :parks, except: [:update, :edit, :destroy]
  root 'parks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
