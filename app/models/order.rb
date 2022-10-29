class Order < ApplicationRecord
  belongs_to :sneaker
  belongs_to :user
end
