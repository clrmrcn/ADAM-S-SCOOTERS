class ScootersController < ApplicationController
  # before_action set_scooter only: [--,--,--]
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
  end

  def update
  end

  def destroy
  end

  private

  def set_scooter
  end

  def scooter_params
    params.require(:scooter).permit(:model, :description)
  end
end
