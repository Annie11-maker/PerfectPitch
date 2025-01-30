class PitchesController < ApplicationController
  before_action :set_pitch, only: [:show, :destroy]

  def index
    @pitches = Pitch.all
  end

  def create
    @pitch = Pitch.new(pitch_params)
    @pitch.user = current_user
    if @pitch.save
      redirect_to pitch_path(@pitch)
    else
      render :new
    end
  end

  def new
    @pitch = Pitch.new
  end

  def show
    @review = Review.new
    @favourite = Favourite.new
    @favourites = Favourite.all
  end

  def edit
  end

  def update
  end

  def destroy
    @pitch.destroy
    redirect_to pitches_path, status: :see_other
  end

  private

  def set_pitch
    @pitch = Pitch.find(params[:id])
  end

  def pitch_params
    params.require(:pitch).permit(:name, :description)
  end

end
