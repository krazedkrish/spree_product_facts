class CreateProductFacts < ActiveRecord::Migration
  def change
    create_table :spree_product_facts do |t|
      t.text :facts

      t.timestamps null: false
    end
  end
end
