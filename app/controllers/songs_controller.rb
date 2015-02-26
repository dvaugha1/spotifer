class SongsController < ApplicationController

  def show

  end

  def index

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
