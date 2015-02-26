class SongsController < ApplicationController

  def show

  end

  def index
    @suggestions = Song.all
    render :suggestion
  end


  def search
    @results = []
    if params[:title]
      titles = RSpotify::Track.search(params[:title])
      @results = titles
    end
    render :show
  end

end
