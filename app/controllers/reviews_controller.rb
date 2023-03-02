class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @artist = Artist.find(params[:artist_id])
    @review.user = current_user
    @review.artist = @artist
    if @review.save
      redirect_to bookings_path
    else
      render "bookings/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
