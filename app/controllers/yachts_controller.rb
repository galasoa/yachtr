class YachtsController < ApplicationController
  def index
    @yachts = Yacht.all
  end

  def show
  end

  def new
  end

  def create
  end
end
