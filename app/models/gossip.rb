class Gossip < ApplicationRecord
  has_many :gossiptags
  has_many :tags, through: :gossiptags

  validates :title,
  presence: true

  validates :content,
  presence: true
end
