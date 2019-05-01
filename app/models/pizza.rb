class Pizza < ApplicationRecord
  has_many :users, through: :pizza_slices
  has_many :pizza_slices 
end
