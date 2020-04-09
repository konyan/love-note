class User < ApplicationRecord

  has_many :articles, dependent: :destroy
  has_many :votes , dependent: :destroy
  has_many :loved_articles, ->{ where votes:{status: :love}},
            through: :votes, source: :articles

  before_save {self.name = name.downcase}

  validates :name, presence: true,
            uniqueness: true,length: {maximum: 20 , minimum: 3}
end
