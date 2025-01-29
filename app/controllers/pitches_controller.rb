class PitchesController < ApplicationController

  def index
    @pitches = Pitch.all
  end

  def create
  end

  def new
  end

  def show
    @pitch = Pitch.find(params[:id])
    @review = Review.new
    @favourite = Favourite.new
    @favourites = Favourite.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_pitch
    @pitch = Pitch.find(params[:id])
  end

  def pitch_params
    params.require(:pitch).permit(:name, :description)
  end

end
