class ReviewsController < ApplicationController
  def create
    @pitch = Pitch.find(params[:pitch_id])
    @review = Review.new(review_params)
    @review.pitch = @pitch
    if @review.save
      redirect_to pitch_path(@pitch)
    else
      render 'pitches/show', status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
