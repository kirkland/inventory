class ProductsController < ApplicationController
  inherit_resources

  def phone
    @products = Product.all
  end
end
