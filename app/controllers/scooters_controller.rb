class ScootersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @scooters = policy_scope(Scooter)
    @markers = @scooters.geocoded.map do |scooter|
      {
        lat: scooter.latitude,
        lng: scooter.longitude,
        info_window: render_to_string(partial: "info_window", locals: { scooter: scooter }),
        image_url: helpers.asset_url('scooter.png')
      }
    end
  end

  def show
    @scooter = Scooter.find(params[:id])
    authorize @scooter
    @booking = Booking.new
  end

  def new
    @scooter = Scooter.new
    authorize @scooter
  end

  def create
    @scooter = Scooter.new(scooter_params)
    @user = current_user
    @scooter.user = @user
    authorize @scooter
    if @scooter.save
      redirect_to scooters_path, notice: "#{@scooter.model} has just been added."
    else
      render 'new'
    end
    authorize @scooter
  end

  def edit
    @scooter = Scooter.find(params[:id])
    authorize @scooter
    @user = current_user
  end

  def update
    @user = current_user
    @scooter = Scooter.find(params[:id])
    authorize @scooter
    if @scooter.update(scooter_params)
      redirect_to scooters_path, notice: "#{@scooter.model} has just been updated."
    else
      render action: :edit
    end
  end

  def destroy
    @user = current_user
    @scooter = Scooter.find(params[:id])
    authorize @scooter
    @scooter.destroy
    redirect_to scooters_path
  end

  private

  def set_scooter
  end

  def scooter_params
    params.require(:scooter).permit(:model, :description, :photo, :price, :available, :address)
  end
end
