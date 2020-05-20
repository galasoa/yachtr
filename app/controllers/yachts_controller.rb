class YachtsController < ApplicationController
  def index
    unless params[:search]
      @yachts = Yacht.all
    else
      @yachts = Yacht.where("location ILIKE ?", params[:search])
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
  params.require(:yacht).permit(:location, :name, :model, :length, :capacity, :crew, :price, :photo)
end
