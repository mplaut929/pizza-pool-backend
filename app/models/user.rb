class User < ApplicationRecord
  has_many :pizzas, through: :pizza_slices
  has_many :pizza_slices
end
