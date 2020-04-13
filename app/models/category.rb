class Category < ApplicationRecord
  has_many :articles, dependent: :destroy

  validates :name, presence: true,
                   uniqueness: true, length: { maximum: 20, minimum: 3 }
  validates :priority, presence: true
end
