class PizzaSliceSerializer < ActiveModel::Serializer
  attributes :slices, :user_name
  belongs_to :user
  belongs_to :pizza

  def user_name
    object.user.name
  end

end
