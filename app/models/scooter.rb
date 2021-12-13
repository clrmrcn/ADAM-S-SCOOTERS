class Scooter < ApplicationRecord
  belongs_to :user
  validates :model, :description, presence: true
end
