class DashboardController < ApplicationController
  def profile
    authorize :dashboard, :profile
    @user = current_user
    @bookings_requests = @user.bookings
    @scooters = Scooter.where(user: current_user)
    @bookings_demands = []
    @bookings = Booking.all
    @bookings.each do |booking|
      @bookings_demands << booking if booking.scooter.user == @user
    end
  end
end
