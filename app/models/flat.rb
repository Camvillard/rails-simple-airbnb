class Flat < ApplicationRecord
  validates :name, presence: true
  validates :address, length: { minimum: 6 }
  validates :description, length: { minimum: 20 }
  validates :city, presence: true
  validates :price_per_night, numericality: true
  validates :number_of_guests, numericality: true

  GUESTS = (1..20).to_a
end
