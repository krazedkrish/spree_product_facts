class AddTitlesToSpreeProductFacts < ActiveRecord::Migration
  def up
    add_column :spree_product_facts, :title, :string
    params= {  :title => :string }
    Spree::ProductFact.add_translation_fields!(params, { migrate_data: true })
  end

  def down
    remove_column :spree_product_fact_translations, :title
    remove_column :spree_product_facts, :title
  end
end
