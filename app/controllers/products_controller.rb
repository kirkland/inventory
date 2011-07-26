class ProductsController < ApplicationController
  inherit_resources

  def iphone
    @products = Product.all
  end
end
