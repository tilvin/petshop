class Brand < ActiveRecord::Base
  has_many :stuffs
  mount_uploader :picture, BrandUploader
  
  validates :name, :description, presence: true
end

