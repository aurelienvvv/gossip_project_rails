class Tag < ApplicationRecord
  has_many :gossiptags
  has_many :gossips, through: :gossiptags
end
