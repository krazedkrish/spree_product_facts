class Spree::ProductFact < ActiveRecord::Base
  validates :title, { :presence => true,
                      :allow_blank => true,
                      :allow_nil => false,
                    }
  validates :facts, { :presence => true,
                      :allow_blank => true,
                      :allow_nil => false,
                    }
  translates :title, :facts, :fallbacks_for_empty_translations => true

  has_many :products
end
