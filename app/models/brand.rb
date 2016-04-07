class Brand < ActiveRecord::Base
  has_many :stuffs
  mount_uploader :picture, BrandUploader

end
