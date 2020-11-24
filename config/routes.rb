Rails.application.routes.draw do
  :plants, only: [:create, :index, :new, :show]
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
