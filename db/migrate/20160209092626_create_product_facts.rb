class CreateProductFacts < ActiveRecord::Migration
  def up
    create_table :spree_product_facts do |t|
      t.text :facts
      t.timestamps null: false
    end
    params= {  :facts => :text }
    Spree::ProductFact.create_translation_table!(params, { migrate_data: true })
  end

  def down
    drop_table :spree_product_facts
    Spree::ProductFact.drop_translation_table!
  end
end
