class DashboardController < ApplicationController
  def profile
    authorize :dashboard, :profile
    @user = current_user
    @bookings = @user.bookings
    @bookings_demands = []
    @bookings_requests = []
    @bookings.each do |booking|
      if booking.scooter.user == @user
        @bookings_demands << booking
      else
        @bookings_requests << booking
      end
    end
  end
end
