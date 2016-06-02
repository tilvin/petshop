class LineItem < ActiveRecord::Base

  belongs_to :stuff
  belongs_to :cart
  belongs_to :weight

  scope :with_weight, -> {where.not( weight_id: nil)}

  validates :stuff_id, :cart_id, presence: true
  validates :color, presence: true, if: :color_present?
 
  def color_present?
    self.stuff.color.present?
  end 
end
