class Spree::ProductFact < ActiveRecord::Base
  validates :facts, { :length => { :in => 0..255 },
                      :presence => true,
                      :allow_blank => true,
                      :allow_nil => false,
                    }
  translates :facts, :fallbacks_for_empty_translations => true

  has_many :products
end
