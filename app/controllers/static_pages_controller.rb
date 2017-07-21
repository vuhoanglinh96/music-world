class StaticPagesController < ApplicationController
  before_action :all_genres, except: :index

  def index; end

  def home; end

  def track; end

  def artist; end

  private

  def all_genres
    @track = Track.new
    @genres = Genre.all
  end
end
