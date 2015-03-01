class SongVotesController < ApplicationController

  def index
    @groups = SongVote.group('title').order('count_id desc').count('id')
  end

end
