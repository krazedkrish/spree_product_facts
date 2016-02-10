class AddSpreeProductFactIdToSpreeProduct < ActiveRecord::Migration
  def change
    add_column :spree_products, :product_fact_id, :integer
  end
end
