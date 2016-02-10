class Spree::Admin::ProductFactsController < Spree::Admin::ResourceController
  def new
    @product_fact = Spree::ProductFact.new
    @products = Spree::Product.all
  end
end
