class ScootersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @scooters = Scooter.all
  end

  def show
    @scooter = Scooter.find(params[:id])
  end

  def new
    @scooter = Scooter.new
  end

  def create
    @scooter = Scooter.new(scooter_params)
    @user = current_user
    @scooter.user = @user
    if @scooter.save!
      redirect_to scooters_path
    else
      render 'new'
    end
  end

  def edit
    @scooter = Scooter.find(params[:id])
    @user = current_user
  end

  def update
    @user = current_user
    @scooter = @user.scooter.find(params[:id])
    if @scooter.update_attributes(scooter_params)
      flash[:success] = "Scooter updated !"
      redirect_to scooters_path
    else
      render action: :edit
    end
  end

  def destroy
    @user = current_user
    @scooter = Scooter.find(params[:id])
    @scooter.destroy
    redirect_to scooters_path
  end

  private

  def set_scooter
  end

  def scooter_params
    params.require(:scooter).permit(:model, :description)
  end
end
