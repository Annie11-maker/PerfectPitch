class FavouritesController < ApplicationController
  def index
    @favourites = current_user.favourites.includes(:pitch)
  end

  def create
    @pitch = Pitch.find(params[:pitch_id])
    @favourite = current_user.favourites.new(pitch: @pitch)
    @favourite.pitch = @pitch
    if @favourite.save
      redirect_to pitch_path(@pitch), notice: 'pitch added to favourites!'
    else
      redirect_to pitch_path(@pitch), alert: 'Unable to add pitch to favourites.'
    end
  end

  def new
  end

  def show
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to favourites_path, notice: 'Pitch removed from favourites.'
  end
end
