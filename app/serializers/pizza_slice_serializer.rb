class PizzaSliceSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :pizza_id

  belongs_to :user
  belongs_to :pizza

end
