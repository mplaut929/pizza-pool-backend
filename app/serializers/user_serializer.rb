class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :pizzas, through: :pizza_slices
  has_many :pizza_slices



  # def slices
  #   User.all.map do |user|
  #     user.pizza_slices.map do |ps|
  #       return ps.slices
  #     end
  #   end
  # end

end
