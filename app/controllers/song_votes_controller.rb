class SongVotesController < ApplicationController

  def index
    @songvotes = SongVote.all
  end

end
