class Spree::ProductFact < ActiveRecord::Base
  translates :facts, :fallbacks_for_empty_translations => true
end
