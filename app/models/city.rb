class City < ApplicationRecord
  has_many :users

  validates :name,
  presence: true

  validates :postal_code,
  presence: true
end
