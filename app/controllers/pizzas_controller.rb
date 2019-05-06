class PizzasController < ApplicationController

  def index
    @pizzas = Pizza.all
    render json: @pizzas
  end


  def create
    @pizzas = Pizza.all
    @pizza = Pizza.find_or_create_by(pizza_params)
    @user = User.find_or_create_by(name: params[:pizza_slices][:user_name])
    @pizza_slice = PizzaSlice.find_or_create_by(user_id: @user.id, pizza_id: @pizza.id, slices: params[:pizza_slices][:slices])
    render json: @pizza
  end

  def update
    @pizzas = Pizza.all
    @pizza = Pizza.find_or_create_by(pizza_params)
    @user = User.find_or_create_by(name: params[:pizza_slices][:user_name])
    @pizza_slice = PizzaSlice.update(user_id: @user.id, pizza_id: @pizza.id, slices: params[:pizza_slices][:slices])
    render json: @pizza
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :vegan, :price)
  end


end
