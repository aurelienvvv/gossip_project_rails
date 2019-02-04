class GossipTag < ApplicationRecord
  belongs_to :gossips
  belongs_to :tags
end
