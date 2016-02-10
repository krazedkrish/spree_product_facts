class CreateProductFacts < ActiveRecord::Migration
  def up
    create_table :spree_product_facts do |t|
      t.timestamps null: false
    end
    Spree::ProductFact.create_translation_table! :facts => :text
  end

  def down
    drop_table :spree_product_facts
    Spree::ProductFact.drop_translation_table!
  end
end
