class Gossip < ApplicationRecord
  has_many :gossiptags
  has_many :tags, through: :gossiptags
  has_many :comments

  has_many :like, as: :likeable

  validates :title,
  presence: true

  validates :content,
  presence: true
end
