class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @costumes = Costume.all
  end

  def new
    @booking = Booking.new
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_index_path
  end
end
