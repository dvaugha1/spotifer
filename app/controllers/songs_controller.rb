class SongsController < ApplicationController

  def show

  end

  def index

  end

  def suggestions
    @suggestions = Song.all
    render :suggestions
  end

  def search
    @results = []
    if params[:title]
      titles = RSpotify::Track.search(params[:title])
      @results = titles
    end
    render :show
  end

  def create

  end

end


# 1L94M3KIu7QluZe63g64rv

# @current = Playlist.last


# @track = RSpotify::Track.find(params[:id])
