class Sneaker < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  validates :name, presence: true
  validates :description, length: {minimum: 5, maximum: 40}
  validates :photos, presence: true

  def trainer_sold?
    bought
  end

  def sell_trainers
    bought = true
  end
end
