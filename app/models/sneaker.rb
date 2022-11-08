class Sneaker < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  validates :name, presence: true
  validates :description, length: {minimum: 5, maximum: 30}
  validates :photo, presence: true
end
