class PizzaSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :vegan
  has_many :pizza_slices
end
