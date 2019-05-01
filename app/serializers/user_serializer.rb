class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :pizzas, through: :pizza_slices
end
