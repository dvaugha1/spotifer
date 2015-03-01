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
  end

  def create
    song = params[:song]
    spotify = song[:spotify_id]
      if Song.find_by spotify_id: spotify
        flash[:notice] = "Suggestion already added. Please select another."
        redirect_to songs_index_path
      else
        @suggest = Song.new(song_params)
        @suggest.save
        @suggestions = Song.all
        render :suggestions
      end

  end

  private
  def song_params
    params.require(:song).permit(:spotify_id, :user_id, :title, :artist, :album)
  end

end


