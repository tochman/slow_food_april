Rails.application.routes.draw do
  mount Cartify::Engine, at: '/'
  devise_for :users
  resources :products, only: [:index, :show]
  root controller: :restaurants, action: :index
end
