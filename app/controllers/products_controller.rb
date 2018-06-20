class ProductsController < ApplicationController
  def index
    @products = Product.order(:position)
  end
end
