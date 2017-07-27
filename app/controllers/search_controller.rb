class SearchController < ApplicationController
  def search
    if params[:term].nil?
      @track = []
    else
      @track = Track.search params[:term]
    end
  end
end
