class Gossip < ApplicationRecord
  has_many :gossiptags
  has_many :tags, through: :gossiptags
  has_many :comments, as: :commentable

  validates :title,
  presence: true

  validates :content,
  presence: true
end
