class ReviewsController < ApplicationController
    def new
    @yacht = Yacht.find(params[:yacht_id])
    @review = Review.new
  end

  def create
    @yacht = Yacht.find(params[:yacht_id])
    @review = Review.new(review_params)
    @review.yacht = @yacht
    if @review.save
      redirect_to yacht_path(@yacht)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
