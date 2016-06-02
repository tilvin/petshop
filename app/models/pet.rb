class Pet < ActiveRecord::Base

  has_many :stuffs
  mount_uploader :picture, PictureUploader

  validates :name, presence: true

  
end
