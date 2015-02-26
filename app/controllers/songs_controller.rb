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
    @results = []
    if params[:title]
      titles = RSpotify::Track.search(params[:title])
      @results = titles
    end
    render :show
  end

  def create
    @song = RSpotify::Track.find(params[:id])
    @song.save
    @suggest = Song.create(spotify_id: @song.id, user_id: current_user.id, title: @song.name, artist: @song.artists.first.name, album: @song.album.name)
  end

end


# 1L94M3KIu7QluZe63g64rv

# @current = Playlist.last


# @track = RSpotify::Track.find(params[:id])
