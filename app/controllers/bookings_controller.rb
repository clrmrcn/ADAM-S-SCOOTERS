class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(param[:id])
  end

  def new
    @booking = Booking.new
  end

  


end
