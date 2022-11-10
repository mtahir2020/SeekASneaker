class Order < ApplicationRecord
  belongs_to :sneaker
  belongs_to :user
  has_one :review, through: :user
end
