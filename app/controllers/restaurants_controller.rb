class RestaurantsController < ApplicationController
  def index
    @products = Product.all
  end
end
