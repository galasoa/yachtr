class YachtsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @yacht = Yacht.new
  end

  def create
    @yacht = Yacht.new(yacht_params)
    if @yachts.save
      redirect_to @yacht
    else
      render :new
    end
  end
end
