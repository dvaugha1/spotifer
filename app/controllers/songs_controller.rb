class SongsController < ApplicationController

  def show

  end

  def index

  end

  def suggestions
    @suggestions = Song.all
    render :suggestion
  end

  def search
    # @results = []
    # if params[:title]
    @results = RSpotify::Track.search(params[:title])
      # @results = titles
    #binding.pry
    render :show
  end

  def create
    #binding.pry
    @suggest = Song.create(params[:song_params])
    binding.pry
    render :suggestion
  end

  private
  def song_params
    params.require[:song].permit(:spotify_id, :user_id, :title, :artist, :album)
  end

end


# 1L94M3KIu7QluZe63g64rv

# @current = Playlist.last


# @track = RSpotify::Track.find(params[:id])
