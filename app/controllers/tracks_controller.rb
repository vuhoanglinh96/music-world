class TracksController < ApplicationController
  def index
    if params[:search]
      @track = Track.search(params[:search]).select(:id, :title, :song,
        :user_id, :genre, :description, :image).paginate page:
        params[:page], per_page: 10
    else
      @track = Track.select(:id, :title, :song, :user_id,
        :genre, :description, :image).paginate page: params[:page], per_page: 10
    end
  end

  def new
    @track ||= Track.new
  end

  def create
    @track = Track.new track_params
    if @track.save
      flash[:success] = "Track uploaded!"
      redirect_to home_path
    else
      render :new
    end
  end

  private

  def track_params
    params.require(:track).permit :title, :description, :genre_id, :song, :user_id
  end
end
