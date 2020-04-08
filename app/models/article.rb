class Article < ApplicationRecord

  belongs_to :user
  belongs_to :category
  belongs_to :font
  belongs_to :image

  validates :title, presence: true, length: {minimum: 10, maximum: 30}
  validates :content, presence: true, length: {minimum: 20, maximum: 200}
  validates :image_id, presence: true
  validates :user_id, presence: true
  validates :category_id, presence: true
  validates :font_id, presence: true

end
