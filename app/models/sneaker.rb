class Sneaker < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :name, presence: true
  validates :description, length: {minimum: 5, maximum: 25}
  validates :photo, presence: true
end
