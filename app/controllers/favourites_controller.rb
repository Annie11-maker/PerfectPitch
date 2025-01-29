class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.all
  end

  def create
    @pitch = Pitch.find(params[:pitch_id])
    @favourite = Favourite.new
    @favourite.pitch = @pitch
    if @favourite.save
      redirect_to pitch_path(@pitch)
    else
      render 'pitches/show', status: :unprocessable_entity
    end
  end

  def new
  end

  def show
  end

  def destroy
  end
end
