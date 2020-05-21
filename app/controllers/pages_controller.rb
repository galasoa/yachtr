class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def profile
    @booking = Booking.where(user_id: current_user)
    @yacht = Yacht.where(user_id: current_user)
  end
end
