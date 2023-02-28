class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @costumes = Costume.all
  end

  def create
    @costume = Costume.find(params[:costume_id])
    @booking = Booking.new(booking_params)
    @booking.costume = @costume
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to bookings_index_path
    else
      render :new, status: unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_index_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :message)
  end
end
