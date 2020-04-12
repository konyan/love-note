class Font < ApplicationRecord
  has_many :articles

  validates :name, presence: true
  validates :origin_name, presence: true
end
