# frozen_string_literal: true

class ProductsController < AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @collections = ShopifyAPI::Collection.find(:all, params: {limit: 4})
    render(json: { products: @products, collections: @collections })
  end
end
