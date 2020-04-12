class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :font
  belongs_to :image

  has_many :votes
  has_many :loved_by_users, -> { where votes: { status: :love } }, through: :votes, source: :user

  validates :title, presence: true, length: { minimum: 10, maximum: 30 }
  validates :content, presence: true, length: { minimum: 20 }
  validates :image_id, presence: true
  validates :user_id, presence: true
  validates :category_id, presence: true
  validates :font_id, presence: true
end
