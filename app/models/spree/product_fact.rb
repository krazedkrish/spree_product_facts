class Spree::ProductFact < ActiveRecord::Base
  tralslates :facts, :fallbacks_for_empty_translations => true

  include SpreeGlobalize::Translatable
end
