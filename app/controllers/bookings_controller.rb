class BookingsController < ApplicationController
  def new
  end

   def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.yacht_id = params[:yacht_id]
    if @booking.save
      redirect_to new_booking_path(@booking)
    else
      render :new
  end
end

  private

    def booking_params
      params.require(:booking).permit(:start_date, :end_date)
    end
end



