# Add relation to product_facts in the product model
Spree::Product.class_eval do
  belongs_to :product_fact

end
