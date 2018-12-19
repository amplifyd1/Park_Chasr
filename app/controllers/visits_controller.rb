class VisitsController < ApplicationController
  # before_action :set_visit, only: [ :show, :destroy ]

  def index
    @visits = Visit.all
  end

  def new
    @visit = Visit.new
  end

  def create
    @visit = Visit.new(visit_params)
    @user = current_user
    @visit.user_id = @user.id
    if @visit.save
      flash[:success] = "Your Visit has been saved!"
      redirect_to root
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
