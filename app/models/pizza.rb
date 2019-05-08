class Pizza < ApplicationRecord
  has_many :pizza_slices, dependent: :destroy
  has_many :users, through: :pizza_slices
end
