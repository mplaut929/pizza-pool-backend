class PizzasController < ApplicationController

  def index
    @pizzas = Pizza.all
    render json: @pizzas
  end


  def create
    byebug
    @pizzas = Pizza.all
    @pizza = Pizza.create(pizza_params)
    render json: @pizzas
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :vegan, :price)
  end


end
