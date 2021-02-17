Rails.application.routes.draw do
  devise_for :users
  root to: 'prototypes#index'
  resources :prototypes do
    resources :comments, only: [:create, :index]
  end
  get 'users/:id', to: 'users#show'
end
