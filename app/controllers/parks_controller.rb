class ParksController < ApplicationController
  def index
    @parks = Park.order('name DESC')
  end

  def new
    @park = Park.new
  end

  def create
    @park = Park.new(park_params)
    if @park.save
      flash[:success] = "BallPark added!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @park = Park.find(params[:id])
  end

  private

  def park_params
    params.require(:park).permit(:name, :address, :description,:photo)
  end
end
