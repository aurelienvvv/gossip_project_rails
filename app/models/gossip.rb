class Gossip < ApplicationRecord
  has_many :gossiptags
  has_many :tags, through: :gossiptags
end
