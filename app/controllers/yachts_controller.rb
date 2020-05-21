class YachtsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    unless params[:search]
      @yachts = Yacht.geocoded
    else
      @yachts = Yacht.geocoded.where("location ILIKE ?", params[:search])
    end

    @markers = @yachts.map do |yacht|
      {
        lat: yacht.latitude,
        lng: yacht.longitude
      }
    end

  end

  def show
    @yacht = Yacht.find(params[:id])
  end

  def new
    @yacht = Yacht.new
  end

  def create
    @yacht = Yacht.new(yacht_params)
    @yacht.user = current_user
    if @yacht.save
      redirect_to @yacht
    else
      render :new
    end
  end
end

private

def yacht_params
  params.require(:yacht).permit(:location, :name, :model, :length, :capacity, :crew, :price, :photo, photos: [])
end
