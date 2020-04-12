class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :article

  enum status: { love: 0, unlove: 1 }

  validates :user_id,presence: true
  validates :article_id, presence: true
end
