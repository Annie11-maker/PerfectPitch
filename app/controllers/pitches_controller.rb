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
    unless @pitch.pain_points.present?
      @pitch.update(pain_points: @pitch.content)
    end
    unless @pitch.target_audience.present?
      @pitch.update(target_audience: @pitch.content)
    end
    unless @pitch.solution.present?
      @pitch.update(solution: @pitch.content)
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @pitch.destroy
    redirect_to pitches_path, status: :see_other
  end

  def generate_ppt
    @pitch = Pitch.find(params[:id])
    ppt_file = create_ppt(@pitch)
    send_file ppt_file, type: "application/vnd.openxmlformats-officedocument.presentationml.presentation", filename: "#{@pitch.name.parameterize}.pptx"
  end

  private

  def set_pitch
    @pitch = Pitch.find(params[:id])
  end

  def pitch_params
    params.require(:pitch).permit(:name, :description, :photo, :template )
  end

  def create_ppt(pitch)
    ppt = Powerpoint::Presentation.new
    # ppt.add_textual_slide(@pitch.name)
    ppt.add_textual_slide("Pain Points", @pitch.content.split("\n")[0..3])
    ppt.add_textual_slide("Target Audience", @pitch.content.split("\n")[4..7])
    ppt.add_textual_slide("Solution", @pitch.content.split("\n")[8..11])
    file_path = Rails.root.join('tmp', "#{@pitch.name.parameterize}.pptx")
    ppt.save(file_path)

    file_path
  end
end
