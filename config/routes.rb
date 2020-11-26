Rails.application.routes.draw do
  resources :plants, only: [:create, :index, :new, :show] do
    resources :reviews, only: [:create]
  end
  devise_for :users
  root to: 'plants#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
