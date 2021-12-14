class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @scooter = Scooter.find(params[:scooter_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @scooter = Scooter.find(params[:scooter_id])
    @booking.scooter = @scooter
    @booking.user = current_user
    if @booking.save
      redirect_to root_path, notice: "#{@scooter.user.username} has been notified and will answer rapidly"
    else
      render 'new'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
