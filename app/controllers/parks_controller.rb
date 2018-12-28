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
    # @park = Park.new(park_params)
    # respond_to do |format|
    #   if @park.save
    #     format.html { redirect_to root_path, notice: 'Place was successfully created.' }
    #     format.js {}
    #   else
    #     format.html { render :new }
    #     format.js {}
    #   end
    # end
  end

  def show
    @park = Park.find(params[:id])
  end

  private

  def park_params
    params.require(:park).permit(:name, :raw_address, :description, :image, :latitude, :longitude)
  end
end
