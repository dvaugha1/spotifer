class SongsController < ApplicationController

  def show

  end

  def index

  end

  # def suggestions
  #   binding.pry
  #   @suggestions = Song.all
  #   #render :suggestion
  # end

  def search
    @results = []
    @title = params[:title]
    if @title
      @results = RSpotify::Track.search(@title)
    end
    #binding.pry
  end

  def create
    #binding.pry
    @suggest = Song.new(song_params)
    @suggest.save
    # binding.pry
    @suggestions = Song.all
    render :suggestions
  end

  private
  def song_params
    params.require(:song).permit(:spotify_id, :user_id, :title, :artist, :album)
  end

end


# 1L94M3KIu7QluZe63g64rv

# @current = Playlist.last


# @track = RSpotify::Track.find(params[:id])
