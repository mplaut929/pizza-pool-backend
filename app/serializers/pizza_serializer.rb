class PizzaSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :vegan
  has_many :users, through: :pizza_slices
end
