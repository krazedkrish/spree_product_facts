class CreateMultilingualFactsTable < ActiveRecord::Migration
  def up
    unless table_exists?(:spree_product_facts)
      params = { :facts => :text }
      Spree::ProductFact.create_translation_table!(params, { :migrate_data => true })
    end
  end
  def down
    Spree::ProductFact.drop_translation_table! :migrate_data => true
  end
end
