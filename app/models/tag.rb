class Tag < ApplicationRecord
  has_many :gossiptags
  has_many :gossips, through: :gossiptags

  validates :title,
  presence: true,
  uniqueness: true
end
