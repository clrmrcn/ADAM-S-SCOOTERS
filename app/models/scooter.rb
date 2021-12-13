class Scooter < ApplicationRecord
  validates :model, :description, presence: true
end
