class Weight < ActiveRecord::Base
  belongs_to :stuff

  validates :size, :stuff_id, presence: true
  validates :price, numericality: { greater_than: 0}
end
