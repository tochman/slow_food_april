Rails.application.routes.draw do
  mount Cartify::Engine, at: '/'
  root controller: :restaurants, action: :index
end
