class BookingsController < ApplicationController
  def new
    @yacht = Yacht.find(params[:yacht_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @yacht = Yacht.find(params[:yacht_id])
    @booking.user = current_user
    @booking.yacht = @yacht
    if @booking.save
      redirect_to pages_profile_path
    else
      render :new
    end
  end

  def edit
     @yacht = Yacht.find(params[:yacht_id])
     @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to pages_profile_path
  end

  # def destroy
  #   @booking = Booking.find(params[:id])
  #   @booking.destroy

  #   redirect_to pages_profile_path
  # end

  private

    def booking_params
      params.require(:booking).permit(:start_date, :end_date)
    end
end



