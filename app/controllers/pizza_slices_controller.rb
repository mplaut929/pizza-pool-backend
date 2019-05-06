class PizzaSlicesController < ApplicationController


  def index
    @pizza_slices = PizzaSlice.all
    render json: @pizza_slices
  end

  def create
    @pizza_slice = PizzaSlice.create(ps_params)
    render json: @pizza_slice
  end

  def update
    # byebug
    @pizza_slice = PizzaSlice.find(params[:id])
    @pizza_slice.slices += 1
    @pizza_slice.save
    render json: @pizza_slice
  end

  private

  def ps_params
    params.require(:pizza_slice).permit(:user_id, :pizza_id)

  end

end
