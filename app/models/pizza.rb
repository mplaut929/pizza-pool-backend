class Pizza < ApplicationRecord
  has_many :pizza_slices
  has_many :users, through: :pizza_slices
end
