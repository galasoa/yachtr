class YachtsController < ApplicationController
  def index
  end

  def show
    @yacht = Yacht.find(params[:id])
  end

  def new
  end

  def create
  end
end
