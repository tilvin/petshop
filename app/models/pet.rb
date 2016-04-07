class Pet < ActiveRecord::Base

  has_many :stuffs
  mount_uploader :picture, PictureUploader

  
end
