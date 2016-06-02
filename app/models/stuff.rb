class Stuff < ActiveRecord::Base
  belongs_to :pet
  belongs_to :discount
  belongs_to :brand
  belongs_to :user
   
  mount_uploader :picture, PictureUploader
  
  has_many :carts, through: :line_items
  has_many :line_items
  
  has_many :weights
  accepts_nested_attributes_for :weights, reject_if: :all_blank, allow_destroy: true

  serialize :color, Array

  enum group: { toys: 0, leads: 1, foods: 2, filler: 3 }

  scope :only_discount, -> { where.not(sale: 0) }

  validates :name, :pet_id, presence: true
  # validates :price, numericality: { greater_than: 0}
end
