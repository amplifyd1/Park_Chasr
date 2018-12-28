class VisitsController < ApplicationController
  # before_action :set_visit, only: [ :show, :destroy ]

  def index
    @visits = Visit.where(user: current_user)
  end

  def new
    @visit = Visit.new
  end

  def create
    @visit = Visit.new(visit_params)
    @user = current_user
    @park = Park.find(params[:park_id])
    @visit.user_id = @user.id
    @visit.park_id = @park.id
    if @visit.save
      flash[:success] = "Your Visit has been saved!"
      redirect_to user_visits_path(user_id: current_user)
    else
      render 'new'
    end
  end

  def show
    @visit = Visit.find(params[:id])
  end

  def destroy
    @visit = Visit.find(params[:id])
  end

  private

  def visit_params
    params.require(:visit).permit(:user_id, :park_id, :date)
  end

  # def set_visit
  #   @visit = Visit.find(params[:id])
  # end

  # def set_parks
  #   @parks = Parks.all.by_name
  # end

end
