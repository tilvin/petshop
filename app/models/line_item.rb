class LineItem < ActiveRecord::Base
  belongs_to :stuff
  belongs_to :cart
  belongs_to :weight

  scope :with_weight, -> {where.not( weight_id: nil)}
  
end
