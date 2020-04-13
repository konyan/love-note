class Image < ApplicationRecord
  has_many :articles

  validates :name, presence: true
  validates :image_url, presence: true
end
