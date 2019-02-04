class GossipTag < ApplicationRecord
  belongs_to :gossips
  belongs_to :tags

  validates :gossip_id,
  presence: true

  validates :tag_id,
  presence: true
end
