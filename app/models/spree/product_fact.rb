class Spree::ProductFact < ActiveRecord::Base
  translates :facts, :fallbacks_for_empty_translations => true

  has_many :products
end
