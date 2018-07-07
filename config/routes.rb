Rails.application.routes.draw do
  mount Cartify::Engine, at: '/'
  resources :products, only: [:index, :show]
  root controller: :restaurants, action: :index
end
