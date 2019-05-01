class User < ApplicationRecord
  has_many :pizza_slices
  has_many :pizzas, through: :pizza_slices
end
