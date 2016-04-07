class Discount < ActiveRecord::Base
  has_many :stuffs

  mount_uploader :picture, DiscountUploader

end
